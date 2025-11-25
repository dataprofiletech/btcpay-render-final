FROM btcpayserver/serverimage:1.13.0
WORKDIR /var/lib/docker/btcpayserver
EXPOSE 49391
ENTRYPOINT ["dotnet", "/app/BTCPayServer.dll"]
CMD ["--urls", "http://*:49391"]
