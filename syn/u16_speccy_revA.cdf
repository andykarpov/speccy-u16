JedecChain;
        FileRevision(JESD32A);
        DefaultMfr(6E);

        P ActionCode(Cfg)
                Device PartName(EP4CE22) Path("/home/andy/Documents/Projects/speccy-u16/syn//") File("u16_speccy_revA.jic") MfrSpec(OpMask(1) SEC_Device(EPCS16) Child_OpMask(1 1));

ChainEnd;

AlteraBegin;
        ChainType(JTAG);
AlteraEnd;