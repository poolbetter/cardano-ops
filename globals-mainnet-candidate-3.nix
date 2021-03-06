pkgs: {

  deploymentName = "mainnet-candidate-3";

  environmentName = "mainnet_candidate_3";

  topology = import ./topologies/mainnet-candidate-3.nix pkgs;

  withExplorer = true;
  withLegacyExplorer = false;
  withHighLoadRelays = true;
  withSmash = true;

  withFaucet = true;
  faucetHostname = "faucet";

  ec2 = {
    credentials = {
      accessKeyIds = {
        IOHK = "default";
        dns = "dev";
      };
    };
  };

  alertTcpHigh = "150";
  alertTcpCrit = "180";
}
