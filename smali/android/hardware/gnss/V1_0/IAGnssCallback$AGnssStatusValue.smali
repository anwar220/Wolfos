# classes2.dex

.class public final Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusValue;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V1_0/IAGnssCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AGnssStatusValue"
.end annotation


# static fields
.field public static final AGNSS_DATA_CONNECTED:B = 0x3t

.field public static final AGNSS_DATA_CONN_DONE:B = 0x4t

.field public static final AGNSS_DATA_CONN_FAILED:B = 0x5t

.field public static final RELEASE_AGNSS_DATA_CONN:B = 0x2t

.field public static final REQUEST_AGNSS_DATA_CONN:B = 0x1t


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(B)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_13

    const-string v2, "REQUEST_AGNSS_DATA_CONN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v1, 0x1

    int-to-byte v1, v2

    :cond_13
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_20

    const-string v2, "RELEASE_AGNSS_DATA_CONN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v1, 0x2

    int-to-byte v1, v2

    :cond_20
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2d

    const-string v2, "AGNSS_DATA_CONNECTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v1, 0x3

    int-to-byte v1, v2

    :cond_2d
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3a

    const-string v2, "AGNSS_DATA_CONN_DONE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v1, 0x4

    int-to-byte v1, v2

    :cond_3a
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_47

    const-string v2, "AGNSS_DATA_CONN_FAILED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v1, 0x5

    int-to-byte v1, v2

    :cond_47
    if-eq p0, v1, :cond_6a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    not-int v3, v1

    and-int/2addr v3, p0

    int-to-byte v3, v3

    invoke-static {v3}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6a
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(B)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    const-string v0, "REQUEST_AGNSS_DATA_CONN"

    return-object v0

    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    const-string v0, "RELEASE_AGNSS_DATA_CONN"

    return-object v0

    :cond_c
    const/4 v0, 0x3

    if-ne p0, v0, :cond_12

    const-string v0, "AGNSS_DATA_CONNECTED"

    return-object v0

    :cond_12
    const/4 v0, 0x4

    if-ne p0, v0, :cond_18

    const-string v0, "AGNSS_DATA_CONN_DONE"

    return-object v0

    :cond_18
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1e

    const-string v0, "AGNSS_DATA_CONN_FAILED"

    return-object v0

    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
