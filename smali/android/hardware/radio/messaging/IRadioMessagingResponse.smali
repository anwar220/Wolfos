# classes2.dex

.class public interface abstract Landroid/hardware/radio/messaging/IRadioMessagingResponse;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;,
        Landroid/hardware/radio/messaging/IRadioMessagingResponse$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;

.field public static final HASH:Ljava/lang/String; = "5237ec5f500627b6b844b155e356e603157f9ba6"

.field public static final VERSION:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "android$hardware$radio$messaging$IRadioMessagingResponse"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/radio/messaging/IRadioMessagingResponse;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract acknowledgeIncomingGsmSmsWithPduResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract acknowledgeLastIncomingCdmaSmsResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract acknowledgeLastIncomingGsmSmsResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract acknowledgeRequest(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract deleteSmsOnRuimResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract deleteSmsOnSimResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCdmaBroadcastConfigResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/messaging/CdmaBroadcastSmsConfigInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getGsmBroadcastConfigResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getInterfaceHash()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getInterfaceVersion()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getSmscAddressResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract reportSmsMemoryStatusResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendCdmaSmsExpectMoreResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/messaging/SendSmsResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendCdmaSmsResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/messaging/SendSmsResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendImsSmsResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/messaging/SendSmsResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendSmsExpectMoreResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/messaging/SendSmsResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendSmsResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/messaging/SendSmsResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setCdmaBroadcastActivationResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setCdmaBroadcastConfigResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setGsmBroadcastActivationResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setGsmBroadcastConfigResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setSmscAddressResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract writeSmsToRuimResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract writeSmsToSimResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
