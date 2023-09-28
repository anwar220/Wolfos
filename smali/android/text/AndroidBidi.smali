# classes3.dex

.class public Landroid/text/AndroidBidi;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bidi(I[C[B)I
    .registers 8

    if-eqz p1, :cond_3e

    if-eqz p2, :cond_3e

    array-length v0, p1

    array-length v1, p2

    if-lt v1, v0, :cond_38

    packed-switch p0, :pswitch_data_44

    :pswitch_b  #0x0
    const/4 v1, 0x0

    goto :goto_16

    :pswitch_d  #0x2
    const/16 v1, 0x7e

    goto :goto_16

    :pswitch_10  #0x1
    const/4 v1, 0x0

    goto :goto_16

    :pswitch_12  #0xffffffff
    const/4 v1, 0x1

    goto :goto_16

    :pswitch_14  #0xfffffffe
    const/16 v1, 0x7f

    :goto_16
    new-instance v2, Landroid/icu/text/Bidi;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Landroid/icu/text/Bidi;-><init>(II)V

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v1, v3}, Landroid/icu/text/Bidi;->setPara([CB[B)V

    const/4 v3, 0x0

    :goto_21
    if-ge v3, v0, :cond_2c

    invoke-virtual {v2, v3}, Landroid/icu/text/Bidi;->getLevelAt(I)B

    move-result v4

    aput-byte v4, p2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_2c
    invoke-virtual {v2}, Landroid/icu/text/Bidi;->getParaLevel()B

    move-result v3

    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_36

    const/4 v4, 0x1

    goto :goto_37

    :cond_36
    const/4 v4, -0x1

    :goto_37
    return v4

    :cond_38
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    :cond_3e
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :pswitch_data_44
    .packed-switch -0x2
        :pswitch_14  #fffffffe
        :pswitch_12  #ffffffff
        :pswitch_b  #00000000
        :pswitch_10  #00000001
        :pswitch_d  #00000002
    .end packed-switch
.end method

.method public static directions(I[BI[CII)Landroid/text/Layout$Directions;
    .registers 25

    move/from16 v0, p5

    if-nez v0, :cond_7

    sget-object v1, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object v1

    :cond_7
    const/4 v2, 0x1

    move/from16 v3, p0

    if-ne v3, v2, :cond_e

    const/4 v4, 0x0

    goto :goto_f

    :cond_e
    move v4, v2

    :goto_f
    aget-byte v5, p1, p2

    move v6, v5

    const/4 v7, 0x1

    add-int/lit8 v8, p2, 0x1

    add-int v9, p2, v0

    :goto_17
    if-ge v8, v9, :cond_23

    aget-byte v10, p1, v8

    if-eq v10, v5, :cond_20

    move v5, v10

    add-int/lit8 v7, v7, 0x1

    :cond_20
    add-int/lit8 v8, v8, 0x1

    goto :goto_17

    :cond_23
    move/from16 v8, p5

    and-int/lit8 v9, v5, 0x1

    and-int/lit8 v10, v4, 0x1

    if-eq v9, v10, :cond_49

    :goto_2b
    add-int/lit8 v8, v8, -0x1

    if-ltz v8, :cond_44

    add-int v9, p4, v8

    aget-char v9, p3, v9

    const/16 v10, 0xa

    if-ne v9, v10, :cond_3a

    add-int/lit8 v8, v8, -0x1

    goto :goto_44

    :cond_3a
    const/16 v10, 0x20

    if-eq v9, v10, :cond_43

    const/16 v10, 0x9

    if-eq v9, v10, :cond_43

    goto :goto_44

    :cond_43
    goto :goto_2b

    :cond_44
    :goto_44
    add-int/2addr v8, v2

    if-eq v8, v0, :cond_49

    add-int/lit8 v7, v7, 0x1

    :cond_49
    if-ne v7, v2, :cond_57

    if-ne v6, v4, :cond_57

    and-int/lit8 v1, v6, 0x1

    if-eqz v1, :cond_54

    sget-object v1, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    return-object v1

    :cond_54
    sget-object v1, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object v1

    :cond_57
    mul-int/lit8 v9, v7, 0x2

    new-array v9, v9, [I

    move v10, v6

    shl-int/lit8 v11, v6, 0x1a

    const/4 v12, 0x1

    move/from16 v13, p2

    move v5, v6

    move/from16 v14, p2

    add-int v15, p2, v8

    :goto_66
    if-ge v14, v15, :cond_88

    aget-byte v1, p1, v14

    if-eq v1, v5, :cond_85

    move v5, v1

    if-le v1, v10, :cond_71

    move v10, v1

    goto :goto_74

    :cond_71
    if-ge v1, v6, :cond_74

    move v6, v1

    :cond_74
    :goto_74
    add-int/lit8 v17, v12, 0x1

    sub-int v18, v14, v13

    or-int v18, v18, v11

    aput v18, v9, v12

    add-int/lit8 v12, v17, 0x1

    sub-int v18, v14, p2

    aput v18, v9, v17

    shl-int/lit8 v11, v5, 0x1a

    move v13, v14

    :cond_85
    add-int/lit8 v14, v14, 0x1

    goto :goto_66

    :cond_88
    add-int v1, p2, v8

    sub-int/2addr v1, v13

    or-int/2addr v1, v11

    aput v1, v9, v12

    if-ge v8, v0, :cond_9b

    add-int/2addr v12, v2

    aput v8, v9, v12

    add-int/2addr v12, v2

    sub-int v1, v0, v8

    shl-int/lit8 v14, v4, 0x1a

    or-int/2addr v1, v14

    aput v1, v9, v12

    :cond_9b
    and-int/lit8 v1, v6, 0x1

    if-ne v1, v4, :cond_a7

    add-int/lit8 v6, v6, 0x1

    if-le v10, v6, :cond_a5

    move v1, v2

    goto :goto_a6

    :cond_a5
    const/4 v1, 0x0

    :goto_a6
    goto :goto_ac

    :cond_a7
    if-le v7, v2, :cond_ab

    move v1, v2

    goto :goto_ac

    :cond_ab
    const/4 v1, 0x0

    :goto_ac
    if-eqz v1, :cond_f4

    add-int/lit8 v2, v10, -0x1

    :goto_b0
    if-lt v2, v6, :cond_f4

    const/4 v12, 0x0

    :goto_b3
    array-length v13, v9

    if-ge v12, v13, :cond_f1

    aget v13, v9, v12

    aget-byte v13, p1, v13

    if-lt v13, v2, :cond_ee

    add-int/lit8 v13, v12, 0x2

    :goto_be
    array-length v14, v9

    if-ge v13, v14, :cond_ca

    aget v14, v9, v13

    aget-byte v14, p1, v14

    if-lt v14, v2, :cond_ca

    add-int/lit8 v13, v13, 0x2

    goto :goto_be

    :cond_ca
    move v14, v12

    add-int/lit8 v15, v13, -0x2

    :goto_cd
    if-ge v14, v15, :cond_ec

    aget v16, v9, v14

    aget v17, v9, v15

    aput v17, v9, v14

    aput v16, v9, v15

    add-int/lit8 v17, v14, 0x1

    aget v16, v9, v17

    add-int/lit8 v17, v14, 0x1

    add-int/lit8 v18, v15, 0x1

    aget v18, v9, v18

    aput v18, v9, v17

    add-int/lit8 v17, v15, 0x1

    aput v16, v9, v17

    add-int/lit8 v14, v14, 0x2

    add-int/lit8 v15, v15, -0x2

    goto :goto_cd

    :cond_ec
    add-int/lit8 v12, v13, 0x2

    :cond_ee
    add-int/lit8 v12, v12, 0x2

    goto :goto_b3

    :cond_f1
    add-int/lit8 v2, v2, -0x1

    goto :goto_b0

    :cond_f4
    new-instance v2, Landroid/text/Layout$Directions;

    invoke-direct {v2, v9}, Landroid/text/Layout$Directions;-><init>([I)V

    return-object v2
.end method
