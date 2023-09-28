# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/util/IPAddress;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isMaskValue(Ljava/lang/String;I)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_5} :catch_b

    if-ltz v1, :cond_a

    if-gt v1, p1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0

    :catch_b
    move-exception v1

    return v0
.end method

.method public static isValid(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/IPAddress;->isValidIPv4(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/IPAddress;->isValidIPv6(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public static isValidIPv4(Ljava/lang/String;)Z
    .registers 8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1d
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    if-ge v3, v4, :cond_48

    const/16 v4, 0x2e

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    move v6, v4

    if-le v4, v3, :cond_48

    if-ne v0, v5, :cond_30

    return v1

    :cond_30
    :try_start_30
    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_38
    .catch Ljava/lang/NumberFormatException; {:try_start_30 .. :try_end_38} :catch_46

    nop

    if-ltz v4, :cond_45

    const/16 v5, 0xff

    if-le v4, v5, :cond_40

    goto :goto_45

    :cond_40
    add-int/lit8 v3, v6, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_45
    :goto_45
    return v1

    :catch_46
    move-exception v4

    return v1

    :cond_48
    if-ne v0, v5, :cond_4b

    const/4 v1, 0x1

    :cond_4b
    return v1
.end method

.method public static isValidIPv4WithNetmask(Ljava/lang/String;)Z
    .registers 5

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-lez v0, :cond_29

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/util/IPAddress;->isValidIPv4(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/IPAddress;->isValidIPv4(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_27

    const/16 v3, 0x20

    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/util/IPAddress;->isMaskValue(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_29

    :cond_27
    const/4 v2, 0x1

    goto :goto_2a

    :cond_29
    nop

    :goto_2a
    return v2
.end method

.method public static isValidIPv6(Ljava/lang/String;)Z
    .registers 11

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1e
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x8

    const/4 v7, 0x1

    if-ge v4, v5, :cond_7a

    const/16 v5, 0x3a

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    move v8, v5

    if-lt v5, v4, :cond_7a

    if-ne v0, v6, :cond_33

    return v1

    :cond_33
    if-eq v4, v8, :cond_69

    invoke-virtual {v2, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v7

    if-ne v8, v6, :cond_52

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-lez v6, :cond_52

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/util/IPAddress;->isValidIPv4(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4f

    return v1

    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_65

    :cond_52
    :try_start_52
    invoke-virtual {v2, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0x10

    invoke-static {v6, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6
    :try_end_5c
    .catch Ljava/lang/NumberFormatException; {:try_start_52 .. :try_end_5c} :catch_67

    nop

    if-ltz v6, :cond_66

    const v9, 0xffff

    if-le v6, v9, :cond_65

    goto :goto_66

    :cond_65
    :goto_65
    goto :goto_76

    :cond_66
    :goto_66
    return v1

    :catch_67
    move-exception v6

    return v1

    :cond_69
    if-eq v8, v7, :cond_75

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v7

    if-eq v8, v5, :cond_75

    if-eqz v3, :cond_75

    return v1

    :cond_75
    const/4 v3, 0x1

    :goto_76
    add-int/lit8 v4, v8, 0x1

    add-int/2addr v0, v7

    goto :goto_1e

    :cond_7a
    if-eq v0, v6, :cond_7e

    if-eqz v3, :cond_7f

    :cond_7e
    move v1, v7

    :cond_7f
    return v1
.end method

.method public static isValidIPv6WithNetmask(Ljava/lang/String;)Z
    .registers 5

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-lez v0, :cond_29

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/util/IPAddress;->isValidIPv6(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/IPAddress;->isValidIPv6(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_27

    const/16 v3, 0x80

    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/util/IPAddress;->isMaskValue(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_29

    :cond_27
    const/4 v2, 0x1

    goto :goto_2a

    :cond_29
    nop

    :goto_2a
    return v2
.end method

.method public static isValidWithNetMask(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/IPAddress;->isValidIPv4WithNetmask(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/IPAddress;->isValidIPv6WithNetmask(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method
