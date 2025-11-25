FROM btcpayserver/serverimage:latest
WORKDIR /var/lib/docker/btcpayserver
EXPOSE 49391
ENTRYPOINT ["dotnet", "/app/BTCPayServer.dll"]
CMD ["--urls", "http://*:49391"]
