# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;
.super Ljava/lang/Object;


# static fields
.field private static final C_CR1:B = 0x1t

.field private static final C_CR2:B = 0x2t

.field private static final C_CR3:B = 0x3t

.field private static final C_ILL:B = 0x0t

.field private static final C_L2A:B = 0x4t

.field private static final C_L3A:B = 0x5t

.field private static final C_L3B:B = 0x6t

.field private static final C_L3C:B = 0x7t

.field private static final C_L4A:B = 0x8t

.field private static final C_L4B:B = 0x9t

.field private static final C_L4C:B = 0xat

.field private static final S_CS1:B = 0x0t

.field private static final S_CS2:B = 0x10t

.field private static final S_CS3:B = 0x20t

.field private static final S_END:B = -0x1t

.field private static final S_ERR:B = -0x2t

.field private static final S_P3A:B = 0x30t

.field private static final S_P3B:B = 0x40t

.field private static final S_P4A:B = 0x50t

.field private static final S_P4B:B = 0x60t

.field private static final firstUnitTable:[S

.field private static final transitionTable:[B


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const/16 v0, 0x80

    new-array v1, v0, [S

    sput-object v1, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->firstUnitTable:[S

    const/16 v1, 0x70

    new-array v2, v1, [B

    sput-object v2, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->transitionTable:[B

    new-array v3, v0, [B

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v5, 0x10

    const/16 v7, 0x1f

    const/4 v8, 0x2

    invoke-static {v3, v5, v7, v8}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v7, 0x20

    const/16 v8, 0x3f

    const/4 v9, 0x3

    invoke-static {v3, v7, v8, v9}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v7, 0x40

    const/16 v8, 0x41

    invoke-static {v3, v7, v8, v4}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v7, 0x42

    const/16 v8, 0x5f

    const/4 v9, 0x4

    invoke-static {v3, v7, v8, v9}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v7, 0x60

    const/4 v8, 0x5

    invoke-static {v3, v7, v7, v8}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v7, 0x61

    const/16 v8, 0x6c

    const/4 v9, 0x6

    invoke-static {v3, v7, v8, v9}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v7, 0x6d

    const/4 v8, 0x7

    invoke-static {v3, v7, v7, v8}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v7, 0x6e

    const/16 v8, 0x6f

    invoke-static {v3, v7, v8, v9}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v7, 0x8

    invoke-static {v3, v1, v1, v7}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v1, 0x71

    const/16 v8, 0x73

    const/16 v9, 0x9

    invoke-static {v3, v1, v8, v9}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v1, 0x74

    const/16 v8, 0xa

    invoke-static {v3, v1, v1, v8}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v1, 0x75

    const/16 v8, 0x7f

    invoke-static {v3, v1, v8, v4}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    array-length v1, v2

    sub-int/2addr v1, v6

    const/4 v6, -0x2

    invoke-static {v2, v4, v1, v6}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v1, 0xb

    const/4 v6, -0x1

    invoke-static {v2, v7, v1, v6}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v6, 0x18

    const/16 v7, 0x1b

    invoke-static {v2, v6, v7, v4}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v6, 0x28

    const/16 v7, 0x2b

    invoke-static {v2, v6, v7, v5}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v6, 0x3a

    const/16 v7, 0x3b

    invoke-static {v2, v6, v7, v4}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v6, 0x48

    const/16 v7, 0x49

    invoke-static {v2, v6, v7, v4}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v4, 0x59

    const/16 v6, 0x5b

    invoke-static {v2, v4, v6, v5}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v4, 0x68

    invoke-static {v2, v4, v4, v5}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    new-array v2, v1, [B

    fill-array-data v2, :array_c0

    new-array v1, v1, [B

    fill-array-data v1, :array_ca

    const/4 v4, 0x0

    :goto_aa
    if-ge v4, v0, :cond_be

    aget-byte v5, v3, v4

    aget-byte v6, v2, v5

    and-int/2addr v6, v4

    aget-byte v7, v1, v5

    sget-object v8, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->firstUnitTable:[S

    shl-int/lit8 v9, v6, 0x8

    or-int/2addr v9, v7

    int-to-short v9, v9

    aput-short v9, v8, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_aa

    :cond_be
    return-void

    nop

    :array_c0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x1ft
        0xft
        0xft
        0xft
        0x7t
        0x7t
        0x7t
    .end array-data

    :array_ca
    .array-data 1
        -0x2t
        -0x2t
        -0x2t
        -0x2t
        0x0t
        0x30t
        0x10t
        0x40t
        0x50t
        0x20t
        0x60t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fill([BIIB)V
    .registers 5

    move v0, p1

    :goto_1
    if-gt v0, p2, :cond_8

    aput-byte p3, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    return-void
.end method

.method public static transcodeToUTF16([B[C)I
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    array-length v2, p0

    if-ge v0, v2, :cond_70

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p0, v0

    const/4 v3, -0x1

    if-ltz v0, :cond_18

    array-length v4, p1

    if-lt v1, v4, :cond_10

    return v3

    :cond_10
    add-int/lit8 v3, v1, 0x1

    int-to-char v4, v0

    aput-char v4, p1, v1

    move v0, v2

    move v1, v3

    goto :goto_2

    :cond_18
    sget-object v4, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->firstUnitTable:[S

    and-int/lit8 v5, v0, 0x7f

    aget-short v4, v4, v5

    ushr-int/lit8 v5, v4, 0x8

    int-to-byte v6, v4

    move v9, v2

    move v2, v0

    move v0, v9

    :goto_24
    if-ltz v6, :cond_3f

    array-length v7, p0

    if-lt v0, v7, :cond_2a

    return v3

    :cond_2a
    add-int/lit8 v7, v0, 0x1

    aget-byte v2, p0, v0

    shl-int/lit8 v0, v5, 0x6

    and-int/lit8 v8, v2, 0x3f

    or-int v5, v0, v8

    sget-object v0, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->transitionTable:[B

    and-int/lit16 v8, v2, 0xff

    ushr-int/lit8 v8, v8, 0x4

    add-int/2addr v8, v6

    aget-byte v6, v0, v8

    move v0, v7

    goto :goto_24

    :cond_3f
    const/4 v7, -0x2

    if-ne v6, v7, :cond_43

    return v3

    :cond_43
    const v7, 0xffff

    if-gt v5, v7, :cond_53

    array-length v7, p1

    if-lt v1, v7, :cond_4c

    return v3

    :cond_4c
    add-int/lit8 v3, v1, 0x1

    int-to-char v7, v5

    aput-char v7, p1, v1

    move v1, v3

    goto :goto_6f

    :cond_53
    array-length v7, p1

    add-int/lit8 v7, v7, -0x1

    if-lt v1, v7, :cond_59

    return v3

    :cond_59
    add-int/lit8 v3, v1, 0x1

    const v7, 0xd7c0

    ushr-int/lit8 v8, v5, 0xa

    add-int/2addr v8, v7

    int-to-char v7, v8

    aput-char v7, p1, v1

    add-int/lit8 v1, v3, 0x1

    const v7, 0xdc00

    and-int/lit16 v8, v5, 0x3ff

    or-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, p1, v3

    :goto_6f
    goto :goto_2

    :cond_70
    return v1
.end method
