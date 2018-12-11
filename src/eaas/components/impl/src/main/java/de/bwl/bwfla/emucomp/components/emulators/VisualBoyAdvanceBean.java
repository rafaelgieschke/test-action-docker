package de.bwl.bwfla.emucomp.components.emulators;

import de.bwl.bwfla.common.exceptions.BWFLAException;
import de.bwl.bwfla.emucomp.api.Drive;
import de.bwl.bwfla.emucomp.api.Nic;

import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.logging.Level;

public class VisualBoyAdvanceBean extends EmulatorBean {

    public void prepareEmulatorRunner() {
        emuRunner.setCommand("VisualBoyAdvance");
        emuRunner.addArgument("--video-3x");
        emuRunner.addArgument("--flash-128k");
        String config = this.getNativeConfig();
        if (config != null && !config.isEmpty()) {
            String[] tokens = config.trim().split("\\s+");
            for (String token : tokens)
            {
                if(token.isEmpty())
                    continue;

                emuRunner.addArgument(token.trim());
            }
        }
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
            //check if this is first image
            emuRunner.addArgument(imagePath.toString());
        } catch (Exception e) {
            LOG.warning("Drive doesn't reference a valid binding, attach canceled." + e.getMessage());
            LOG.log(Level.WARNING, e.getMessage(), e);
            return false;
        }
        return false;
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
