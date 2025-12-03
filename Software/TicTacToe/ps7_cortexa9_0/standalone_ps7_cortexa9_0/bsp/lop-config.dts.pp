#line 2 "lop-config.dts"
/dts-v1/;
/ {
        compatible = "system-device-tree-v1,lop";
        lops {
                lop_0 {
                        compatible = "system-device-tree-v1,lop,load";
                        load = "assists/baremetal_validate_comp_xlnx.py";
                };

                lop_1 {
                    compatible = "system-device-tree-v1,lop,assist-v1";
                    node = "/";
                    outdir = "A:/Facultate/Labs/SSC/TicTacToe/Software/TicTacToe/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp";
                    id = "module,baremetal_validate_comp_xlnx";
                    options = "ps7_cortexa9_0 A:/Aplicatii/Vivado/Vitis/2024.1/data/embeddedsw/lib/sw_services/xilffs_v5_2/src A:/Facultate/Labs/SSC/TicTacToe/Software/.wsdata/.repo.yaml";
                };

        };
    };
