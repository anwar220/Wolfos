# classes2.dex

.class public final Landroid/hardware/usb/gadget/V1_2/UsbSpeed;
.super Ljava/lang/Object;


# static fields
.field public static final FULLSPEED:I = 0x1

.field public static final HIGHSPEED:I = 0x2

.field public static final LOWSPEED:I = 0x0

.field public static final RESERVED_SPEED:I = 0x40

.field public static final SUPERSPEED:I = 0x3

.field public static final SUPERSPEED_10Gb:I = 0x4

.field public static final SUPERSPEED_20Gb:I = 0x5

.field public static final UNKNOWN:I = -0x1

.field public static final USB4_GEN2_10Gb:I = 0x6

.field public static final USB4_GEN2_20Gb:I = 0x7

.field public static final USB4_GEN3_20Gb:I = 0x8

.field public static final USB4_GEN3_40Gb:I = 0x9


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    and-int/lit8 v2, p0, -0x1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_12

    const-string v2, "UNKNOWN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, -0x1

    :cond_12
    const-string v2, "LOWSPEED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_23

    const-string v2, "FULLSPEED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x1

    :cond_23
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2f

    const-string v2, "HIGHSPEED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x2

    :cond_2f
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3b

    const-string v2, "SUPERSPEED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x3

    :cond_3b
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_47

    const-string v2, "SUPERSPEED_10Gb"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x4

    :cond_47
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_53

    const-string v2, "SUPERSPEED_20Gb"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x5

    :cond_53
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5f

    const-string v2, "USB4_GEN2_10Gb"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x6

    :cond_5f
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6b

    const-string v2, "USB4_GEN2_20Gb"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x7

    :cond_6b
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_78

    const-string v2, "USB4_GEN3_20Gb"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x8

    :cond_78
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_85

    const-string v2, "USB4_GEN3_40Gb"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x9

    :cond_85
    and-int/lit8 v2, p0, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_92

    const-string v2, "RESERVED_SPEED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x40

    :cond_92
    if-eq p0, v1, :cond_b0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    not-int v3, v1

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b0
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3

    const/4 v0, -0x1

    if-ne p0, v0, :cond_6

    const-string v0, "UNKNOWN"

    return-object v0

    :cond_6
    if-nez p0, :cond_b

    const-string v0, "LOWSPEED"

    return-object v0

    :cond_b
    const/4 v0, 0x1

    if-ne p0, v0, :cond_11

    const-string v0, "FULLSPEED"

    return-object v0

    :cond_11
    const/4 v0, 0x2

    if-ne p0, v0, :cond_17

    const-string v0, "HIGHSPEED"

    return-object v0

    :cond_17
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1d

    const-string v0, "SUPERSPEED"

    return-object v0

    :cond_1d
    const/4 v0, 0x4

    if-ne p0, v0, :cond_23

    const-string v0, "SUPERSPEED_10Gb"

    return-object v0

    :cond_23
    const/4 v0, 0x5

    if-ne p0, v0, :cond_29

    const-string v0, "SUPERSPEED_20Gb"

    return-object v0

    :cond_29
    const/4 v0, 0x6

    if-ne p0, v0, :cond_2f

    const-string v0, "USB4_GEN2_10Gb"

    return-object v0

    :cond_2f
    const/4 v0, 0x7

    if-ne p0, v0, :cond_35

    const-string v0, "USB4_GEN2_20Gb"

    return-object v0

    :cond_35
    const/16 v0, 0x8

    if-ne p0, v0, :cond_3c

    const-string v0, "USB4_GEN3_20Gb"

    return-object v0

    :cond_3c
    const/16 v0, 0x9

    if-ne p0, v0, :cond_43

    const-string v0, "USB4_GEN3_40Gb"

    return-object v0

    :cond_43
    const/16 v0, 0x40

    if-ne p0, v0, :cond_4a

    const-string v0, "RESERVED_SPEED"

    return-object v0

    :cond_4a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
