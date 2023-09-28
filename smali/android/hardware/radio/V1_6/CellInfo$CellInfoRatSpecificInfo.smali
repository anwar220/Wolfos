# classes2.dex

.class public final Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_6/CellInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CellInfoRatSpecificInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo$hidl_discriminator;
    }
.end annotation


# instance fields
.field private hidl_d:B

.field private hidl_o:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    new-instance v0, Landroid/hardware/radio/V1_5/CellInfoGsm;

    invoke-direct {v0}, Landroid/hardware/radio/V1_5/CellInfoGsm;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    return-void
.end method

.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit16 v3, v2, 0xc8

    int-to-long v5, v3

    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x0

    :goto_24
    if-ge v4, v2, :cond_37

    new-instance v5, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;-><init>()V

    mul-int/lit16 v6, v4, 0xc8

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    :cond_37
    return-object v0
.end method

.method public static final writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit16 v3, v1, 0xc8

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v3, 0x0

    :goto_1e
    if-ge v3, v1, :cond_2f

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;

    mul-int/lit16 v5, v3, 0xc8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method


# virtual methods
.method public cdma()Landroid/hardware/radio/V1_2/CellInfoCdma;
    .registers 5

    iget-byte v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4f

    iget-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_12
    const-string v0, "null"

    :goto_14
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    invoke-static {v3}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo$hidl_discriminator;->getName(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), and hidl_o is of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4f
    iget-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_64

    const-class v1, Landroid/hardware/radio/V1_2/CellInfoCdma;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    goto :goto_64

    :cond_5c
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Union is in a corrupted state."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_64
    :goto_64
    iget-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/V1_2/CellInfoCdma;

    return-object v0
.end method

.method public cdma(Landroid/hardware/radio/V1_2/CellInfoCdma;)V
    .registers 3

    const/4 v0, 0x5

    iput-byte v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    iput-object p1, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;

    if-eq v2, v3, :cond_11

    return v1

    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    iget-byte v4, v2, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    if-eq v3, v4, :cond_1b

    return v1

    :cond_1b
    iget-object v3, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    return v1

    :cond_26
    return v0
.end method

.method public getDiscriminator()B
    .registers 2

    iget-byte v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    return v0
.end method

.method public gsm()Landroid/hardware/radio/V1_5/CellInfoGsm;
    .registers 5

    iget-byte v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    if-eqz v0, :cond_4e

    iget-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_11
    const-string v0, "null"

    :goto_13
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    invoke-static {v3}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo$hidl_discriminator;->getName(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), and hidl_o is of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4e
    iget-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_63

    const-class v1, Landroid/hardware/radio/V1_5/CellInfoGsm;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    goto :goto_63

    :cond_5b
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Union is in a corrupted state."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_63
    :goto_63
    iget-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/V1_5/CellInfoGsm;

    return-object v0
.end method

.method public gsm(Landroid/hardware/radio/V1_5/CellInfoGsm;)V
    .registers 3

    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    iput-object p1, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    return-void
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-byte v1, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public lte()Landroid/hardware/radio/V1_6/CellInfoLte;
    .registers 5

    iget-byte v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4f

    iget-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_12
    const-string v0, "null"

    :goto_14
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    invoke-static {v3}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo$hidl_discriminator;->getName(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), and hidl_o is of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4f
    iget-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_64

    const-class v1, Landroid/hardware/radio/V1_6/CellInfoLte;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    goto :goto_64

    :cond_5c
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Union is in a corrupted state."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_64
    :goto_64
    iget-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/V1_6/CellInfoLte;

    return-object v0
.end method

.method public lte(Landroid/hardware/radio/V1_6/CellInfoLte;)V
    .registers 3

    const/4 v0, 0x3

    iput-byte v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    iput-object p1, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    return-void
.end method

.method public nr()Landroid/hardware/radio/V1_6/CellInfoNr;
    .registers 5

    iget-byte v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4f

    iget-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_12
    const-string v0, "null"

    :goto_14
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    invoke-static {v3}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo$hidl_discriminator;->getName(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), and hidl_o is of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4f
    iget-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_64

    const-class v1, Landroid/hardware/radio/V1_6/CellInfoNr;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    goto :goto_64

    :cond_5c
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Union is in a corrupted state."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_64
    :goto_64
    iget-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/V1_6/CellInfoNr;

    return-object v0
.end method

.method public nr(Landroid/hardware/radio/V1_6/CellInfoNr;)V
    .registers 3

    const/4 v0, 0x4

    iput-byte v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    iput-object p1, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    return-void
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 9

    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    const-wide/16 v1, 0x8

    packed-switch v0, :pswitch_data_8a

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown union discriminator (value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2f  #0x5
    new-instance v0, Landroid/hardware/radio/V1_2/CellInfoCdma;

    invoke-direct {v0}, Landroid/hardware/radio/V1_2/CellInfoCdma;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/hardware/radio/V1_2/CellInfoCdma;

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_2/CellInfoCdma;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    goto :goto_89

    :pswitch_3e  #0x4
    new-instance v0, Landroid/hardware/radio/V1_6/CellInfoNr;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/CellInfoNr;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/hardware/radio/V1_6/CellInfoNr;

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_6/CellInfoNr;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    goto :goto_89

    :pswitch_4d  #0x3
    new-instance v0, Landroid/hardware/radio/V1_6/CellInfoLte;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/CellInfoLte;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/hardware/radio/V1_6/CellInfoLte;

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_6/CellInfoLte;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    goto :goto_89

    :pswitch_5c  #0x2
    new-instance v0, Landroid/hardware/radio/V1_5/CellInfoTdscdma;

    invoke-direct {v0}, Landroid/hardware/radio/V1_5/CellInfoTdscdma;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/hardware/radio/V1_5/CellInfoTdscdma;

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_5/CellInfoTdscdma;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    goto :goto_89

    :pswitch_6b  #0x1
    new-instance v0, Landroid/hardware/radio/V1_5/CellInfoWcdma;

    invoke-direct {v0}, Landroid/hardware/radio/V1_5/CellInfoWcdma;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/hardware/radio/V1_5/CellInfoWcdma;

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_5/CellInfoWcdma;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    goto :goto_89

    :pswitch_7a  #0x0
    new-instance v0, Landroid/hardware/radio/V1_5/CellInfoGsm;

    invoke-direct {v0}, Landroid/hardware/radio/V1_5/CellInfoGsm;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/hardware/radio/V1_5/CellInfoGsm;

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_5/CellInfoGsm;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    nop

    :goto_89
    return-void

    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_7a  #00000000
        :pswitch_6b  #00000001
        :pswitch_5c  #00000002
        :pswitch_4d  #00000003
        :pswitch_3e  #00000004
        :pswitch_2f  #00000005
    .end packed-switch
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public tdscdma()Landroid/hardware/radio/V1_5/CellInfoTdscdma;
    .registers 5

    iget-byte v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4f

    iget-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_12
    const-string v0, "null"

    :goto_14
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    invoke-static {v3}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo$hidl_discriminator;->getName(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), and hidl_o is of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4f
    iget-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_64

    const-class v1, Landroid/hardware/radio/V1_5/CellInfoTdscdma;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    goto :goto_64

    :cond_5c
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Union is in a corrupted state."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_64
    :goto_64
    iget-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/V1_5/CellInfoTdscdma;

    return-object v0
.end method

.method public tdscdma(Landroid/hardware/radio/V1_5/CellInfoTdscdma;)V
    .registers 3

    const/4 v0, 0x2

    iput-byte v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    iput-object p1, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    packed-switch v1, :pswitch_data_88

    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown union discriminator (value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_30  #0x5
    const-string v1, ".cdma = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->cdma()Landroid/hardware/radio/V1_2/CellInfoCdma;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_7e

    :pswitch_3d  #0x4
    const-string v1, ".nr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->nr()Landroid/hardware/radio/V1_6/CellInfoNr;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_7e

    :pswitch_4a  #0x3
    const-string v1, ".lte = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->lte()Landroid/hardware/radio/V1_6/CellInfoLte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_7e

    :pswitch_57  #0x2
    const-string v1, ".tdscdma = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->tdscdma()Landroid/hardware/radio/V1_5/CellInfoTdscdma;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_7e

    :pswitch_64  #0x1
    const-string v1, ".wcdma = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->wcdma()Landroid/hardware/radio/V1_5/CellInfoWcdma;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_7e

    :pswitch_71  #0x0
    const-string v1, ".gsm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->gsm()Landroid/hardware/radio/V1_5/CellInfoGsm;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    nop

    :goto_7e
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_71  #00000000
        :pswitch_64  #00000001
        :pswitch_57  #00000002
        :pswitch_4a  #00000003
        :pswitch_3d  #00000004
        :pswitch_30  #00000005
    .end packed-switch
.end method

.method public wcdma()Landroid/hardware/radio/V1_5/CellInfoWcdma;
    .registers 5

    iget-byte v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4f

    iget-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_12
    const-string v0, "null"

    :goto_14
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    invoke-static {v3}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo$hidl_discriminator;->getName(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), and hidl_o is of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4f
    iget-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_64

    const-class v1, Landroid/hardware/radio/V1_5/CellInfoWcdma;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    goto :goto_64

    :cond_5c
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Union is in a corrupted state."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_64
    :goto_64
    iget-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/V1_5/CellInfoWcdma;

    return-object v0
.end method

.method public wcdma(Landroid/hardware/radio/V1_5/CellInfoWcdma;)V
    .registers 3

    const/4 v0, 0x1

    iput-byte v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    iput-object p1, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    return-void
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7

    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    iget-byte v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    const-wide/16 v1, 0x8

    packed-switch v0, :pswitch_data_68

    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown union discriminator (value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_30  #0x5
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->cdma()Landroid/hardware/radio/V1_2/CellInfoCdma;

    move-result-object v0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_2/CellInfoCdma;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    goto :goto_66

    :pswitch_39  #0x4
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->nr()Landroid/hardware/radio/V1_6/CellInfoNr;

    move-result-object v0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_6/CellInfoNr;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    goto :goto_66

    :pswitch_42  #0x3
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->lte()Landroid/hardware/radio/V1_6/CellInfoLte;

    move-result-object v0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_6/CellInfoLte;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    goto :goto_66

    :pswitch_4b  #0x2
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->tdscdma()Landroid/hardware/radio/V1_5/CellInfoTdscdma;

    move-result-object v0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_5/CellInfoTdscdma;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    goto :goto_66

    :pswitch_54  #0x1
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->wcdma()Landroid/hardware/radio/V1_5/CellInfoWcdma;

    move-result-object v0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_5/CellInfoWcdma;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    goto :goto_66

    :pswitch_5d  #0x0
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->gsm()Landroid/hardware/radio/V1_5/CellInfoGsm;

    move-result-object v0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_5/CellInfoGsm;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    nop

    :goto_66
    return-void

    nop

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_5d  #00000000
        :pswitch_54  #00000001
        :pswitch_4b  #00000002
        :pswitch_42  #00000003
        :pswitch_39  #00000004
        :pswitch_30  #00000005
    .end packed-switch
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
