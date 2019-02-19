package de.bwl.bwfla.emucomp.components.emulators;

import de.bwl.bwfla.common.exceptions.BWFLAException;
import de.bwl.bwfla.emucomp.api.Drive;
import de.bwl.bwfla.emucomp.api.MachineConfiguration;
import de.bwl.bwfla.emucomp.api.Nic;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.logging.Level;

public class ContraltoBean extends EmulatorBean {
    @Override
    protected void prepareEmulatorRunner() throws BWFLAException {
        emuRunner.setCommand("mono");
        emuRunner.addArgument("/ContrAlto/Contralto/bin/Debug/Contralto.exe");
        emuRunner.setWorkingDirectory(Paths.get("/ContrAlto/Contralto/bin/Debug"));
    }

    @Override
    protected String getEmulatorWorkdir()
    {
        return "/ContrAlto/Contralto/bin/Debug";
    }

    @Override
    protected String getEmuContainerName(MachineConfiguration env)
    {
        return "contralto";
    }

    @Override
    protected boolean addDrive(Drive drive) {
        if (drive == null || (drive.getData() == null)) {
            LOG.severe("Drive doesn't contain an image, attach canceled.");
            return false;
        }
        Path imagePath = null;
        try {
            imagePath = Paths.get(this.lookupResource(drive.getData(), this.getImageFormatForDriveType(drive.getType())));

            String script = "Load Disk 0 " + imagePath.toString() + "\n";
            script += "Start";

            Files.write(this.getDataDir().resolve("start"), script.getBytes());

            emuRunner.addArguments("-script", this.getDataDir().resolve("start").toString());
            return true;
        } catch (Exception e) {
            LOG.warning("Drive doesn't reference a valid binding, attach canceled." + e.getMessage());
            LOG.log(Level.WARNING, e.getMessage(), e);
            return false;
        }
    }

    @Override
    protected boolean connectDrive(Drive drive, boolean attach) {
        return false;
    }

    @Override
    protected boolean addNic(Nic nic) {
        return false;
    }
}
