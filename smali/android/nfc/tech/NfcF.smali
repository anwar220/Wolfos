# classes2.dex

.class public final Landroid/nfc/tech/NfcF;
.super Landroid/nfc/tech/BasicTagTechnology;


# static fields
.field public static final EXTRA_PMM:Ljava/lang/String; = "pmm"

.field public static final EXTRA_SC:Ljava/lang/String; = "systemcode"

.field private static final TAG:Ljava/lang/String; = "NFC"


# instance fields
.field private mManufacturer:[B

.field private mSystemCode:[B


# direct methods
.method public constructor <init>(Landroid/nfc/Tag;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Landroid/nfc/tech/BasicTagTechnology;-><init>(Landroid/nfc/Tag;I)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/nfc/tech/NfcF;->mSystemCode:[B

    iput-object v1, p0, Landroid/nfc/tech/NfcF;->mManufacturer:[B

    invoke-virtual {p1, v0}, Landroid/nfc/Tag;->getTechExtras(I)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1f

    const-string v1, "systemcode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Landroid/nfc/tech/NfcF;->mSystemCode:[B

    const-string v1, "pmm"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Landroid/nfc/tech/NfcF;->mManufacturer:[B

    :cond_1f
    return-void
.end method

.method public static get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcF;
    .registers 3

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/nfc/Tag;->hasTech(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    return-object v1

    :cond_9
    :try_start_9
    new-instance v0, Landroid/nfc/tech/NfcF;

    invoke-direct {v0, p0}, Landroid/nfc/tech/NfcF;-><init>(Landroid/nfc/Tag;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_f

    return-object v0

    :catch_f
    move-exception v0

    return-object v1
.end method


# virtual methods
.method public bridge synthetic close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->close()V

    return-void
.end method

.method public bridge synthetic connect()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->connect()V

    return-void
.end method

.method public getManufacturer()[B
    .registers 2

    iget-object v0, p0, Landroid/nfc/tech/NfcF;->mManufacturer:[B

    return-object v0
.end method

.method public getMaxTransceiveLength()I
    .registers 2

    invoke-virtual {p0}, Landroid/nfc/tech/NfcF;->getMaxTransceiveLengthInternal()I

    move-result v0

    return v0
.end method

.method public getSystemCode()[B
    .registers 2

    iget-object v0, p0, Landroid/nfc/tech/NfcF;->mSystemCode:[B

    return-object v0
.end method

.method public bridge synthetic getTag()Landroid/nfc/Tag;
    .registers 2

    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->getTag()Landroid/nfc/Tag;

    move-result-object v0

    return-object v0
.end method

.method public getTimeout()I
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/nfc/tech/NfcF;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v0}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/nfc/INfcTag;->getTimeout(I)I

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    return v0

    :catch_c
    move-exception v0

    const-string v1, "NFC"

    const-string v2, "NFC service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public bridge synthetic isConnected()Z
    .registers 2

    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->isConnected()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic reconnect()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->reconnect()V

    return-void
.end method

.method public setTimeout(I)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroid/nfc/tech/NfcF;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v0}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1, p1}, Landroid/nfc/INfcTag;->setTimeout(II)I

    move-result v0

    if-nez v0, :cond_e

    goto :goto_1e

    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The supplied timeout is not valid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_16

    :catch_16
    move-exception v0

    const-string v1, "NFC"

    const-string v2, "NFC service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1e
    return-void
.end method

.method public transceive([B)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/nfc/tech/NfcF;->transceive([BZ)[B

    move-result-object v0

    return-object v0
.end method
