# classes2.dex

.class Landroid/media/Cea608CCParser$CCData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea608CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CCData"
.end annotation


# static fields
.field private static final mCtrlCodeMap:[Ljava/lang/String;

.field private static final mProtugueseCharMap:[Ljava/lang/String;

.field private static final mSpanishCharMap:[Ljava/lang/String;

.field private static final mSpecialCharMap:[Ljava/lang/String;


# instance fields
.field private final mData1:B

.field private final mData2:B

.field private final mType:B


# direct methods
.method static bridge synthetic -$$Nest$misExtendedChar(Landroid/media/Cea608CCParser$CCData;)Z
    .registers 1

    invoke-direct {p0}, Landroid/media/Cea608CCParser$CCData;->isExtendedChar()Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 33

    const-string v0, "RCL"

    const-string v1, "BS"

    const-string v2, "AOF"

    const-string v3, "AON"

    const-string v4, "DER"

    const-string v5, "RU2"

    const-string v6, "RU3"

    const-string v7, "RU4"

    const-string v8, "FON"

    const-string v9, "RDC"

    const-string v10, "TR"

    const-string v11, "RTD"

    const-string v12, "EDM"

    const-string v13, "CR"

    const-string v14, "ENM"

    const-string v15, "EOC"

    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/Cea608CCParser$CCData;->mCtrlCodeMap:[Ljava/lang/String;

    const-string v1, "®"

    const-string v2, "°"

    const-string v3, "½"

    const-string v4, "¿"

    const-string v5, "™"

    const-string v6, "¢"

    const-string v7, "£"

    const-string v8, "♪"

    const-string v9, "à"

    const-string v10, "\u00a0"

    const-string v11, "è"

    const-string v12, "â"

    const-string v13, "ê"

    const-string v14, "î"

    const-string v15, "ô"

    const-string v16, "û"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/Cea608CCParser$CCData;->mSpecialCharMap:[Ljava/lang/String;

    const-string v1, "Á"

    const-string v2, "É"

    const-string v3, "Ó"

    const-string v4, "Ú"

    const-string v5, "Ü"

    const-string v6, "ü"

    const-string v7, "‘"

    const-string v8, "¡"

    const-string v9, "*"

    const-string v10, "\'"

    const-string v11, "—"

    const-string v12, "©"

    const-string v13, "℠"

    const-string v14, "•"

    const-string v15, "“"

    const-string v16, "”"

    const-string v17, "À"

    const-string v18, "Â"

    const-string v19, "Ç"

    const-string v20, "È"

    const-string v21, "Ê"

    const-string v22, "Ë"

    const-string v23, "ë"

    const-string v24, "Î"

    const-string v25, "Ï"

    const-string v26, "ï"

    const-string v27, "Ô"

    const-string v28, "Ù"

    const-string v29, "ù"

    const-string v30, "Û"

    const-string v31, "«"

    const-string v32, "»"

    filled-new-array/range {v1 .. v32}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/Cea608CCParser$CCData;->mSpanishCharMap:[Ljava/lang/String;

    const-string v1, "Ã"

    const-string v2, "ã"

    const-string v3, "Í"

    const-string v4, "Ì"

    const-string v5, "ì"

    const-string v6, "Ò"

    const-string v7, "ò"

    const-string v8, "Õ"

    const-string v9, "õ"

    const-string v10, "{"

    const-string v11, "}"

    const-string v12, "\\"

    const-string v13, "^"

    const-string v14, "_"

    const-string v15, "|"

    const-string v16, "~"

    const-string v17, "Ä"

    const-string v18, "ä"

    const-string v19, "Ö"

    const-string v20, "ö"

    const-string v21, "ß"

    const-string v22, "¥"

    const-string v23, "¤"

    const-string v24, "│"

    const-string v25, "Å"

    const-string v26, "å"

    const-string v27, "Ø"

    const-string v28, "ø"

    const-string v29, "┌"

    const-string v30, "┐"

    const-string v31, "└"

    const-string v32, "┘"

    filled-new-array/range {v1 .. v32}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/Cea608CCParser$CCData;->mProtugueseCharMap:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(BBB)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Landroid/media/Cea608CCParser$CCData;->mType:B

    iput-byte p2, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    iput-byte p3, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    return-void
.end method

.method private ctrlCodeToString(I)Ljava/lang/String;
    .registers 4

    sget-object v0, Landroid/media/Cea608CCParser$CCData;->mCtrlCodeMap:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x20

    aget-object v0, v0, v1

    return-object v0
.end method

.method static fromByteArray([B)[Landroid/media/Cea608CCParser$CCData;
    .registers 7

    array-length v0, p0

    div-int/lit8 v0, v0, 0x3

    new-array v0, v0, [Landroid/media/Cea608CCParser$CCData;

    const/4 v1, 0x0

    :goto_6
    array-length v2, v0

    if-ge v1, v2, :cond_23

    new-instance v2, Landroid/media/Cea608CCParser$CCData;

    mul-int/lit8 v3, v1, 0x3

    aget-byte v3, p0, v3

    mul-int/lit8 v4, v1, 0x3

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p0, v4

    mul-int/lit8 v5, v1, 0x3

    add-int/lit8 v5, v5, 0x2

    aget-byte v5, p0, v5

    invoke-direct {v2, v3, v4, v5}, Landroid/media/Cea608CCParser$CCData;-><init>(BBB)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_23
    return-object v0
.end method

.method private getBasicChar(B)C
    .registers 3

    sparse-switch p1, :sswitch_data_24

    int-to-char v0, p1

    goto :goto_22

    :sswitch_5
    const/16 v0, 0x2588

    goto :goto_22

    :sswitch_8
    const/16 v0, 0xf1

    goto :goto_22

    :sswitch_b
    const/16 v0, 0xd1

    goto :goto_22

    :sswitch_e
    const/16 v0, 0xf7

    goto :goto_22

    :sswitch_11
    const/16 v0, 0xe7

    goto :goto_22

    :sswitch_14
    const/16 v0, 0xfa

    goto :goto_22

    :sswitch_17
    const/16 v0, 0xf3

    goto :goto_22

    :sswitch_1a
    const/16 v0, 0xed

    goto :goto_22

    :sswitch_1d
    const/16 v0, 0xe9

    goto :goto_22

    :sswitch_20
    const/16 v0, 0xe1

    :goto_22
    return v0

    nop

    :sswitch_data_24
    .sparse-switch
        0x2a -> :sswitch_20
        0x5c -> :sswitch_1d
        0x5e -> :sswitch_1a
        0x5f -> :sswitch_17
        0x60 -> :sswitch_14
        0x7b -> :sswitch_11
        0x7c -> :sswitch_e
        0x7d -> :sswitch_b
        0x7e -> :sswitch_8
        0x7f -> :sswitch_5
    .end sparse-switch
.end method

.method private getBasicChars()Ljava/lang/String;
    .registers 5

    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    const/16 v1, 0x20

    if-lt v0, v1, :cond_2b

    const/16 v2, 0x7f

    if-gt v0, v2, :cond_2b

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-byte v3, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    invoke-direct {p0, v3}, Landroid/media/Cea608CCParser$CCData;->getBasicChar(B)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    if-lt v3, v1, :cond_26

    if-gt v3, v2, :cond_26

    invoke-direct {p0, v3}, Landroid/media/Cea608CCParser$CCData;->getBasicChar(B)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2b
    const/4 v0, 0x0

    return-object v0
.end method

.method private getExtendedChar()Ljava/lang/String;
    .registers 5

    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    const/16 v1, 0x3f

    const/16 v2, 0x20

    const/16 v3, 0x12

    if-eq v0, v3, :cond_e

    const/16 v3, 0x1a

    if-ne v0, v3, :cond_1a

    :cond_e
    iget-byte v3, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    if-lt v3, v2, :cond_1a

    if-gt v3, v1, :cond_1a

    sget-object v0, Landroid/media/Cea608CCParser$CCData;->mSpanishCharMap:[Ljava/lang/String;

    sub-int/2addr v3, v2

    aget-object v0, v0, v3

    return-object v0

    :cond_1a
    const/16 v3, 0x13

    if-eq v0, v3, :cond_22

    const/16 v3, 0x1b

    if-ne v0, v3, :cond_2e

    :cond_22
    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    if-lt v0, v2, :cond_2e

    if-gt v0, v1, :cond_2e

    sget-object v1, Landroid/media/Cea608CCParser$CCData;->mProtugueseCharMap:[Ljava/lang/String;

    sub-int/2addr v0, v2

    aget-object v0, v1, v0

    return-object v0

    :cond_2e
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSpecialChar()Ljava/lang/String;
    .registers 4

    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    const/16 v1, 0x11

    if-eq v0, v1, :cond_a

    const/16 v1, 0x19

    if-ne v0, v1, :cond_1a

    :cond_a
    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    const/16 v1, 0x30

    if-lt v0, v1, :cond_1a

    const/16 v2, 0x3f

    if-gt v0, v2, :cond_1a

    sget-object v2, Landroid/media/Cea608CCParser$CCData;->mSpecialCharMap:[Ljava/lang/String;

    sub-int/2addr v0, v1

    aget-object v0, v2, v0

    return-object v0

    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method private isBasicChar()Z
    .registers 3

    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    const/16 v1, 0x20

    if-lt v0, v1, :cond_c

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private isExtendedChar()Z
    .registers 3

    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    const/16 v1, 0x12

    if-eq v0, v1, :cond_12

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_12

    const/16 v1, 0x13

    if-eq v0, v1, :cond_12

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_1e

    :cond_12
    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    const/16 v1, 0x20

    if-lt v0, v1, :cond_1e

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0
.end method

.method private isSpecialChar()Z
    .registers 3

    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    const/16 v1, 0x11

    if-eq v0, v1, :cond_a

    const/16 v1, 0x19

    if-ne v0, v1, :cond_16

    :cond_a
    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    const/16 v1, 0x30

    if-lt v0, v1, :cond_16

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method


# virtual methods
.method getCtrlCode()I
    .registers 3

    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    const/16 v1, 0x14

    if-eq v0, v1, :cond_a

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_15

    :cond_a
    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    const/16 v1, 0x20

    if-lt v0, v1, :cond_15

    const/16 v1, 0x2f

    if-gt v0, v1, :cond_15

    return v0

    :cond_15
    const/4 v0, -0x1

    return v0
.end method

.method getDisplayText()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Landroid/media/Cea608CCParser$CCData;->getBasicChars()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    invoke-direct {p0}, Landroid/media/Cea608CCParser$CCData;->getSpecialChar()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    invoke-direct {p0}, Landroid/media/Cea608CCParser$CCData;->getExtendedChar()Ljava/lang/String;

    move-result-object v0

    :cond_10
    return-object v0
.end method

.method getMidRow()Landroid/media/Cea608CCParser$StyleCode;
    .registers 3

    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    const/16 v1, 0x11

    if-eq v0, v1, :cond_a

    const/16 v1, 0x19

    if-ne v0, v1, :cond_19

    :cond_a
    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    const/16 v1, 0x20

    if-lt v0, v1, :cond_19

    const/16 v1, 0x2f

    if-gt v0, v1, :cond_19

    invoke-static {v0}, Landroid/media/Cea608CCParser$StyleCode;->fromByte(B)Landroid/media/Cea608CCParser$StyleCode;

    move-result-object v0

    return-object v0

    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method getPAC()Landroid/media/Cea608CCParser$PAC;
    .registers 5

    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    and-int/lit8 v1, v0, 0x70

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1d

    iget-byte v1, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    and-int/lit8 v2, v1, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_1d

    and-int/lit8 v2, v0, 0x7

    if-nez v2, :cond_18

    and-int/lit8 v2, v1, 0x20

    if-nez v2, :cond_1d

    :cond_18
    invoke-static {v0, v1}, Landroid/media/Cea608CCParser$PAC;->fromBytes(BB)Landroid/media/Cea608CCParser$PAC;

    move-result-object v0

    return-object v0

    :cond_1d
    const/4 v0, 0x0

    return-object v0
.end method

.method getTabOffset()I
    .registers 3

    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    const/16 v1, 0x17

    if-eq v0, v1, :cond_a

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_17

    :cond_a
    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    const/16 v1, 0x21

    if-lt v0, v1, :cond_17

    const/16 v1, 0x23

    if-gt v0, v1, :cond_17

    and-int/lit8 v0, v0, 0x3

    return v0

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method isDisplayableChar()Z
    .registers 2

    invoke-direct {p0}, Landroid/media/Cea608CCParser$CCData;->isBasicChar()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-direct {p0}, Landroid/media/Cea608CCParser$CCData;->isSpecialChar()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-direct {p0}, Landroid/media/Cea608CCParser$CCData;->isExtendedChar()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 11

    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    const/16 v1, 0x10

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ge v0, v1, :cond_2f

    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    if-ge v0, v1, :cond_2f

    new-array v0, v2, [Ljava/lang/Object;

    iget-byte v1, p0, Landroid/media/Cea608CCParser$CCData;->mType:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v4

    iget-byte v1, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v3

    iget-byte v1, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "[%d]Null: %02x %02x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2f
    invoke-virtual {p0}, Landroid/media/Cea608CCParser$CCData;->getCtrlCode()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4d

    new-array v1, v5, [Ljava/lang/Object;

    iget-byte v2, p0, Landroid/media/Cea608CCParser$CCData;->mType:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-direct {p0, v0}, Landroid/media/Cea608CCParser$CCData;->ctrlCodeToString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "[%d]%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_4d
    invoke-virtual {p0}, Landroid/media/Cea608CCParser$CCData;->getTabOffset()I

    move-result v1

    if-lez v1, :cond_6a

    new-array v2, v5, [Ljava/lang/Object;

    iget-byte v5, p0, Landroid/media/Cea608CCParser$CCData;->mType:B

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "[%d]Tab%d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_6a
    invoke-virtual {p0}, Landroid/media/Cea608CCParser$CCData;->getPAC()Landroid/media/Cea608CCParser$PAC;

    move-result-object v6

    if-eqz v6, :cond_87

    new-array v2, v5, [Ljava/lang/Object;

    iget-byte v5, p0, Landroid/media/Cea608CCParser$CCData;->mType:B

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {v6}, Landroid/media/Cea608CCParser$PAC;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "[%d]PAC: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_87
    invoke-virtual {p0}, Landroid/media/Cea608CCParser$CCData;->getMidRow()Landroid/media/Cea608CCParser$StyleCode;

    move-result-object v7

    if-eqz v7, :cond_a4

    new-array v2, v5, [Ljava/lang/Object;

    iget-byte v5, p0, Landroid/media/Cea608CCParser$CCData;->mType:B

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {v7}, Landroid/media/Cea608CCParser$StyleCode;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "[%d]Mid-row: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_a4
    invoke-virtual {p0}, Landroid/media/Cea608CCParser$CCData;->isDisplayableChar()Z

    move-result v8

    if-eqz v8, :cond_d2

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    iget-byte v9, p0, Landroid/media/Cea608CCParser$CCData;->mType:B

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-virtual {p0}, Landroid/media/Cea608CCParser$CCData;->getDisplayText()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    iget-byte v3, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v8, v5

    iget-byte v3, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v8, v2

    const-string v2, "[%d]Displayable: %s (%02x %02x)"

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_d2
    new-array v2, v2, [Ljava/lang/Object;

    iget-byte v8, p0, Landroid/media/Cea608CCParser$CCData;->mType:B

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v2, v4

    iget-byte v4, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    iget-byte v3, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "[%d]Invalid: %02x %02x"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
