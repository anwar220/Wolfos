# classes.dex

.class public final Landroid/app/admin/PasswordMetrics;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/PasswordMetrics$ComplexityBucket;,
        Landroid/app/admin/PasswordMetrics$CharacterCatagory;
    }
.end annotation


# static fields
.field private static final CHAR_DIGIT:I = 0x2

.field private static final CHAR_LOWER_CASE:I = 0x0

.field private static final CHAR_SYMBOL:I = 0x3

.field private static final CHAR_UPPER_CASE:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/PasswordMetrics;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX_ALLOWED_SEQUENCE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PasswordMetrics"


# instance fields
.field public credType:I

.field public length:I

.field public letters:I

.field public lowerCase:I

.field public nonLetter:I

.field public nonNumeric:I

.field public numeric:I

.field public seqLength:I

.field public symbols:I

.field public upperCase:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/admin/PasswordMetrics$1;

    invoke-direct {v0}, Landroid/app/admin/PasswordMetrics$1;-><init>()V

    sput-object v0, Landroid/app/admin/PasswordMetrics;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->length:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    const v0, 0x7fffffff

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->seqLength:I

    iput p1, p0, Landroid/app/admin/PasswordMetrics;->credType:I

    return-void
.end method

.method public constructor <init>(IIIIIIIIII)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->length:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    const v0, 0x7fffffff

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->seqLength:I

    iput p1, p0, Landroid/app/admin/PasswordMetrics;->credType:I

    iput p2, p0, Landroid/app/admin/PasswordMetrics;->length:I

    iput p3, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    iput p4, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    iput p5, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    iput p6, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    iput p7, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    iput p8, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    iput p9, p0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    iput p10, p0, Landroid/app/admin/PasswordMetrics;->seqLength:I

    return-void
.end method

.method private constructor <init>(Landroid/app/admin/PasswordMetrics;)V
    .registers 13

    iget v1, p1, Landroid/app/admin/PasswordMetrics;->credType:I

    iget v2, p1, Landroid/app/admin/PasswordMetrics;->length:I

    iget v3, p1, Landroid/app/admin/PasswordMetrics;->letters:I

    iget v4, p1, Landroid/app/admin/PasswordMetrics;->upperCase:I

    iget v5, p1, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    iget v6, p1, Landroid/app/admin/PasswordMetrics;->numeric:I

    iget v7, p1, Landroid/app/admin/PasswordMetrics;->symbols:I

    iget v8, p1, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    iget v9, p1, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    iget v10, p1, Landroid/app/admin/PasswordMetrics;->seqLength:I

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Landroid/app/admin/PasswordMetrics;-><init>(IIIIIIIIII)V

    return-void
.end method

.method public static applyComplexity(Landroid/app/admin/PasswordMetrics;ZI)Landroid/app/admin/PasswordMetrics;
    .registers 4

    invoke-static {p2}, Landroid/app/admin/PasswordMetrics$ComplexityBucket;->forComplexity(I)Landroid/app/admin/PasswordMetrics$ComplexityBucket;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/app/admin/PasswordMetrics;->applyComplexity(Landroid/app/admin/PasswordMetrics;ZLandroid/app/admin/PasswordMetrics$ComplexityBucket;)Landroid/app/admin/PasswordMetrics;

    move-result-object v0

    return-object v0
.end method

.method private static applyComplexity(Landroid/app/admin/PasswordMetrics;ZLandroid/app/admin/PasswordMetrics$ComplexityBucket;)Landroid/app/admin/PasswordMetrics;
    .registers 6

    new-instance v0, Landroid/app/admin/PasswordMetrics;

    invoke-direct {v0, p0}, Landroid/app/admin/PasswordMetrics;-><init>(Landroid/app/admin/PasswordMetrics;)V

    invoke-virtual {p2}, Landroid/app/admin/PasswordMetrics$ComplexityBucket;->canHaveSequence()Z

    move-result v1

    if-nez v1, :cond_14

    iget v1, v0, Landroid/app/admin/PasswordMetrics;->seqLength:I

    const/4 v2, 0x3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/app/admin/PasswordMetrics;->seqLength:I

    :cond_14
    iget v1, v0, Landroid/app/admin/PasswordMetrics;->length:I

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {p2, v2}, Landroid/app/admin/PasswordMetrics$ComplexityBucket;->getMinimumLength(Z)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/app/admin/PasswordMetrics;->length:I

    return-object v0
.end method

.method private static categoryChar(C)I
    .registers 2

    const/16 v0, 0x61

    if-gt v0, p0, :cond_a

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    const/16 v0, 0x41

    if-gt v0, p0, :cond_14

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    const/16 v0, 0x30

    if-gt v0, p0, :cond_1e

    const/16 v0, 0x39

    if-gt p0, v0, :cond_1e

    const/4 v0, 0x2

    return v0

    :cond_1e
    const/4 v0, 0x3

    return v0
.end method

.method private static comparePasswordMetrics(Landroid/app/admin/PasswordMetrics;Landroid/app/admin/PasswordMetrics$ComplexityBucket;Landroid/app/admin/PasswordMetrics;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/admin/PasswordMetrics;",
            "Landroid/app/admin/PasswordMetrics$ComplexityBucket;",
            "Landroid/app/admin/PasswordMetrics;",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/PasswordValidationError;",
            ">;)V"
        }
    .end annotation

    iget v0, p2, Landroid/app/admin/PasswordMetrics;->length:I

    iget v1, p0, Landroid/app/admin/PasswordMetrics;->length:I

    if-ge v0, v1, :cond_f

    new-instance v0, Lcom/android/internal/widget/PasswordValidationError;

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    iget v0, p2, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    const/4 v1, 0x0

    if-nez v0, :cond_41

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    if-nez v0, :cond_41

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    if-nez v0, :cond_41

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    if-nez v0, :cond_41

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    if-nez v0, :cond_41

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    if-nez v0, :cond_41

    invoke-virtual {p1, v1}, Landroid/app/admin/PasswordMetrics$ComplexityBucket;->getMinimumLength(Z)I

    move-result v0

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->length:I

    if-le v0, v2, :cond_41

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    if-le v0, v2, :cond_41

    iget v2, p2, Landroid/app/admin/PasswordMetrics;->length:I

    if-ge v2, v0, :cond_41

    new-instance v2, Lcom/android/internal/widget/PasswordValidationError;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v0}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_41
    iget v0, p2, Landroid/app/admin/PasswordMetrics;->letters:I

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    if-ge v0, v2, :cond_50

    new-instance v0, Lcom/android/internal/widget/PasswordValidationError;

    const/4 v3, 0x7

    invoke-direct {v0, v3, v2}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_50
    iget v0, p2, Landroid/app/admin/PasswordMetrics;->upperCase:I

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    if-ge v0, v2, :cond_60

    new-instance v0, Lcom/android/internal/widget/PasswordValidationError;

    const/16 v3, 0x8

    invoke-direct {v0, v3, v2}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_60
    iget v0, p2, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    if-ge v0, v2, :cond_70

    new-instance v0, Lcom/android/internal/widget/PasswordValidationError;

    const/16 v3, 0x9

    invoke-direct {v0, v3, v2}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_70
    iget v0, p2, Landroid/app/admin/PasswordMetrics;->numeric:I

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    if-ge v0, v2, :cond_80

    new-instance v0, Lcom/android/internal/widget/PasswordValidationError;

    const/16 v3, 0xa

    invoke-direct {v0, v3, v2}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_80
    iget v0, p2, Landroid/app/admin/PasswordMetrics;->symbols:I

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    if-ge v0, v2, :cond_90

    new-instance v0, Lcom/android/internal/widget/PasswordValidationError;

    const/16 v3, 0xb

    invoke-direct {v0, v3, v2}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_90
    iget v0, p2, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    if-ge v0, v2, :cond_a0

    new-instance v0, Lcom/android/internal/widget/PasswordValidationError;

    const/16 v3, 0xc

    invoke-direct {v0, v3, v2}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a0
    iget v0, p2, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    if-ge v0, v2, :cond_b0

    new-instance v0, Lcom/android/internal/widget/PasswordValidationError;

    const/16 v3, 0xd

    invoke-direct {v0, v3, v2}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b0
    iget v0, p2, Landroid/app/admin/PasswordMetrics;->seqLength:I

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->seqLength:I

    if-le v0, v2, :cond_bf

    new-instance v0, Lcom/android/internal/widget/PasswordValidationError;

    const/4 v2, 0x6

    invoke-direct {v0, v2, v1}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_bf
    return-void
.end method

.method public static complexityLevelToMinQuality(I)I
    .registers 2

    sparse-switch p0, :sswitch_data_c

    const/4 v0, 0x0

    return v0

    :sswitch_5
    const/high16 v0, 0x30000

    return v0

    :sswitch_8
    const/high16 v0, 0x10000

    return v0

    nop

    :sswitch_data_c
    .sparse-switch
        0x10000 -> :sswitch_8
        0x30000 -> :sswitch_5
        0x50000 -> :sswitch_5
    .end sparse-switch
.end method

.method public static computeForCredential(Lcom/android/internal/widget/LockscreenCredential;)Landroid/app/admin/PasswordMetrics;
    .registers 4

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->isPassword()Z

    move-result v0

    if-nez v0, :cond_44

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->isPin()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_44

    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->isPattern()Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v0, Landroid/app/admin/PasswordMetrics;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/app/admin/PasswordMetrics;-><init>(I)V

    return-object v0

    :cond_1a
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-eqz v0, :cond_27

    new-instance v0, Landroid/app/admin/PasswordMetrics;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/app/admin/PasswordMetrics;-><init>(I)V

    return-object v0

    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown credential type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_44
    :goto_44
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->isPin()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/app/admin/PasswordMetrics;->computeForPasswordOrPin([BZ)Landroid/app/admin/PasswordMetrics;

    move-result-object v0

    return-object v0
.end method

.method public static computeForPasswordOrPin([BZ)Landroid/app/admin/PasswordMetrics;
    .registers 24

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    array-length v15, v0

    array-length v8, v0

    const/4 v9, 0x0

    :goto_c
    if-ge v9, v8, :cond_36

    aget-byte v10, v0, v9

    int-to-char v11, v10

    invoke-static {v11}, Landroid/app/admin/PasswordMetrics;->categoryChar(C)I

    move-result v11

    packed-switch v11, :pswitch_data_56

    goto :goto_33

    :pswitch_19  #0x3
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_33

    :pswitch_20  #0x2
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_33

    :pswitch_25  #0x1
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_33

    :pswitch_2c  #0x0
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v7, v7, 0x1

    nop

    :goto_33
    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    :cond_36
    if-eqz p1, :cond_3a

    const/4 v8, 0x3

    goto :goto_3b

    :cond_3a
    const/4 v8, 0x4

    :goto_3b
    move v9, v8

    invoke-static/range {p0 .. p0}, Landroid/app/admin/PasswordMetrics;->maxLengthSequence([B)I

    move-result v19

    new-instance v20, Landroid/app/admin/PasswordMetrics;

    move-object/from16 v8, v20

    move v10, v15

    move v11, v1

    move v12, v2

    move v13, v3

    move v14, v4

    move/from16 v21, v15

    move v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v19

    invoke-direct/range {v8 .. v18}, Landroid/app/admin/PasswordMetrics;-><init>(IIIIIIIIII)V

    return-object v20

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_2c  #00000000
        :pswitch_25  #00000001
        :pswitch_20  #00000002
        :pswitch_19  #00000003
    .end packed-switch
.end method

.method private static hasInvalidCharacters([B)Z
    .registers 7

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_16

    aget-byte v3, p0, v2

    int-to-char v4, v3

    const/16 v5, 0x20

    if-lt v4, v5, :cond_14

    const/16 v5, 0x7f

    if-le v4, v5, :cond_11

    goto :goto_14

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_14
    :goto_14
    const/4 v0, 0x1

    return v0

    :cond_16
    return v1
.end method

.method public static isNumericOnly(Ljava/lang/String;)Z
    .registers 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1e

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/app/admin/PasswordMetrics;->categoryChar(C)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1b

    return v1

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1e
    const/4 v0, 0x1

    return v0
.end method

.method private static maxDiffCategory(I)I
    .registers 2

    packed-switch p0, :pswitch_data_a

    const/4 v0, 0x0

    return v0

    :pswitch_5  #0x2
    const/16 v0, 0xa

    return v0

    :pswitch_8  #0x0, 0x1
    const/4 v0, 0x1

    return v0

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_8  #00000000
        :pswitch_8  #00000001
        :pswitch_5  #00000002
    .end packed-switch
.end method

.method public static maxLengthSequence([B)I
    .registers 13

    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    return v1

    :cond_5
    aget-byte v0, p0, v1

    int-to-char v0, v0

    invoke-static {v0}, Landroid/app/admin/PasswordMetrics;->categoryChar(C)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    :goto_11
    array-length v7, p0

    if-ge v6, v7, :cond_46

    aget-byte v7, p0, v6

    int-to-char v7, v7

    invoke-static {v7}, Landroid/app/admin/PasswordMetrics;->categoryChar(C)I

    move-result v8

    sub-int v9, v7, v0

    if-ne v8, v1, :cond_39

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v10

    invoke-static {v1}, Landroid/app/admin/PasswordMetrics;->maxDiffCategory(I)I

    move-result v11

    if-le v10, v11, :cond_2a

    goto :goto_39

    :cond_2a
    if-eqz v3, :cond_36

    if-eq v9, v2, :cond_36

    sub-int v10, v6, v5

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v5, v6, -0x1

    :cond_36
    move v2, v9

    const/4 v3, 0x1

    goto :goto_42

    :cond_39
    :goto_39
    sub-int v10, v6, v5

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v5, v6

    const/4 v3, 0x0

    move v1, v8

    :goto_42
    move v0, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    :cond_46
    array-length v6, p0

    sub-int/2addr v6, v5

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    return v4
.end method

.method public static merge(Ljava/util/List;)Landroid/app/admin/PasswordMetrics;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/admin/PasswordMetrics;",
            ">;)",
            "Landroid/app/admin/PasswordMetrics;"
        }
    .end annotation

    new-instance v0, Landroid/app/admin/PasswordMetrics;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/app/admin/PasswordMetrics;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/PasswordMetrics;

    invoke-virtual {v0, v2}, Landroid/app/admin/PasswordMetrics;->maxWith(Landroid/app/admin/PasswordMetrics;)V

    goto :goto_a

    :cond_1a
    return-object v0
.end method

.method private removeOverlapping()V
    .registers 10

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    iget v1, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    add-int/2addr v3, v2

    iget v4, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, p0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int v6, v2, v4

    iget v7, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    add-int/2addr v7, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v7, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    const/4 v8, 0x0

    if-lt v0, v7, :cond_2f

    iput v8, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    :cond_2f
    iget v7, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    if-lt v1, v7, :cond_35

    iput v8, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    :cond_35
    iget v7, p0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    if-lt v3, v7, :cond_3b

    iput v8, p0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    :cond_3b
    iget v7, p0, Landroid/app/admin/PasswordMetrics;->length:I

    if-lt v6, v7, :cond_41

    iput v8, p0, Landroid/app/admin/PasswordMetrics;->length:I

    :cond_41
    return-void
.end method

.method public static sanitizeComplexityLevel(I)I
    .registers 3

    sparse-switch p0, :sswitch_data_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid password complexity used: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PasswordMetrics"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :sswitch_1d
    return p0

    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_1d
        0x10000 -> :sswitch_1d
        0x30000 -> :sswitch_1d
        0x50000 -> :sswitch_1d
    .end sparse-switch
.end method

.method private satisfiesBucket(Landroid/app/admin/PasswordMetrics$ComplexityBucket;)Z
    .registers 7

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->credType:I

    invoke-virtual {p1, v0}, Landroid/app/admin/PasswordMetrics$ComplexityBucket;->allowsCredType(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->credType:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v0, v2, :cond_14

    if-eq v0, v3, :cond_14

    return v4

    :cond_14
    invoke-virtual {p1}, Landroid/app/admin/PasswordMetrics$ComplexityBucket;->canHaveSequence()Z

    move-result v0

    if-nez v0, :cond_1e

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->seqLength:I

    if-gt v0, v3, :cond_2f

    :cond_1e
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->length:I

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    if-lez v2, :cond_26

    move v2, v4

    goto :goto_27

    :cond_26
    move v2, v1

    :goto_27
    invoke-virtual {p1, v2}, Landroid/app/admin/PasswordMetrics$ComplexityBucket;->getMinimumLength(Z)I

    move-result v2

    if-lt v0, v2, :cond_2f

    move v1, v4

    goto :goto_30

    :cond_2f
    nop

    :goto_30
    return v1
.end method

.method public static validatePassword(Landroid/app/admin/PasswordMetrics;IZ[B)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/admin/PasswordMetrics;",
            "IZ[B)",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/PasswordValidationError;",
            ">;"
        }
    .end annotation

    invoke-static {p3}, Landroid/app/admin/PasswordMetrics;->hasInvalidCharacters([B)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Lcom/android/internal/widget/PasswordValidationError;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_12
    invoke-static {p3, p2}, Landroid/app/admin/PasswordMetrics;->computeForPasswordOrPin([BZ)Landroid/app/admin/PasswordMetrics;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/app/admin/PasswordMetrics;->validatePasswordMetrics(Landroid/app/admin/PasswordMetrics;ILandroid/app/admin/PasswordMetrics;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static validatePasswordMetrics(Landroid/app/admin/PasswordMetrics;ILandroid/app/admin/PasswordMetrics;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/admin/PasswordMetrics;",
            "I",
            "Landroid/app/admin/PasswordMetrics;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/PasswordValidationError;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Landroid/app/admin/PasswordMetrics$ComplexityBucket;->forComplexity(I)Landroid/app/admin/PasswordMetrics$ComplexityBucket;

    move-result-object v0

    iget v1, p2, Landroid/app/admin/PasswordMetrics;->credType:I

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->credType:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v1, v2, :cond_62

    invoke-virtual {v0, v1}, Landroid/app/admin/PasswordMetrics$ComplexityBucket;->allowsCredType(I)Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_62

    :cond_13
    iget v1, p2, Landroid/app/admin/PasswordMetrics;->credType:I

    const/4 v2, 0x4

    const/4 v5, 0x3

    if-eq v1, v2, :cond_20

    if-eq v1, v5, :cond_20

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_20
    if-ne v1, v5, :cond_31

    iget v1, p2, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    if-lez v1, :cond_31

    new-instance v1, Lcom/android/internal/widget/PasswordValidationError;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v4}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v6, p2, Landroid/app/admin/PasswordMetrics;->length:I

    const/16 v7, 0x10

    if-le v6, v7, :cond_45

    new-instance v6, Lcom/android/internal/widget/PasswordValidationError;

    const/4 v8, 0x5

    invoke-direct {v6, v8, v7}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_45
    iget v6, p2, Landroid/app/admin/PasswordMetrics;->credType:I

    if-ne v6, v5, :cond_4a

    goto :goto_4b

    :cond_4a
    move v3, v4

    :goto_4b
    invoke-static {p0, v3, v0}, Landroid/app/admin/PasswordMetrics;->applyComplexity(Landroid/app/admin/PasswordMetrics;ZLandroid/app/admin/PasswordMetrics$ComplexityBucket;)Landroid/app/admin/PasswordMetrics;

    move-result-object v3

    iget v4, v3, Landroid/app/admin/PasswordMetrics;->length:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v3, Landroid/app/admin/PasswordMetrics;->length:I

    invoke-direct {v3}, Landroid/app/admin/PasswordMetrics;->removeOverlapping()V

    invoke-static {v3, v0, p2, v1}, Landroid/app/admin/PasswordMetrics;->comparePasswordMetrics(Landroid/app/admin/PasswordMetrics;Landroid/app/admin/PasswordMetrics$ComplexityBucket;Landroid/app/admin/PasswordMetrics;Ljava/util/ArrayList;)V

    return-object v1

    :cond_62
    :goto_62
    new-instance v1, Lcom/android/internal/widget/PasswordValidationError;

    invoke-direct {v1, v3, v4}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public determineComplexity()I
    .registers 6

    invoke-static {}, Landroid/app/admin/PasswordMetrics$ComplexityBucket;->values()[Landroid/app/admin/PasswordMetrics$ComplexityBucket;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    invoke-direct {p0, v3}, Landroid/app/admin/PasswordMetrics;->satisfiesBucket(Landroid/app/admin/PasswordMetrics$ComplexityBucket;)Z

    move-result v4

    if-eqz v4, :cond_13

    iget v0, v3, Landroid/app/admin/PasswordMetrics$ComplexityBucket;->mComplexityLevel:I

    return v0

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to figure out complexity for a given metrics"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_54

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_54

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/app/admin/PasswordMetrics;

    iget v3, p0, Landroid/app/admin/PasswordMetrics;->credType:I

    iget v4, v2, Landroid/app/admin/PasswordMetrics;->credType:I

    if-ne v3, v4, :cond_52

    iget v3, p0, Landroid/app/admin/PasswordMetrics;->length:I

    iget v4, v2, Landroid/app/admin/PasswordMetrics;->length:I

    if-ne v3, v4, :cond_52

    iget v3, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    iget v4, v2, Landroid/app/admin/PasswordMetrics;->letters:I

    if-ne v3, v4, :cond_52

    iget v3, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    iget v4, v2, Landroid/app/admin/PasswordMetrics;->upperCase:I

    if-ne v3, v4, :cond_52

    iget v3, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    iget v4, v2, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    if-ne v3, v4, :cond_52

    iget v3, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    iget v4, v2, Landroid/app/admin/PasswordMetrics;->numeric:I

    if-ne v3, v4, :cond_52

    iget v3, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    iget v4, v2, Landroid/app/admin/PasswordMetrics;->symbols:I

    if-ne v3, v4, :cond_52

    iget v3, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    iget v4, v2, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    if-ne v3, v4, :cond_52

    iget v3, p0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    iget v4, v2, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    if-ne v3, v4, :cond_52

    iget v3, p0, Landroid/app/admin/PasswordMetrics;->seqLength:I

    iget v4, v2, Landroid/app/admin/PasswordMetrics;->seqLength:I

    if-ne v3, v4, :cond_52

    goto :goto_53

    :cond_52
    move v0, v1

    :goto_53
    return v0

    :cond_54
    :goto_54
    return v1
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/app/admin/PasswordMetrics;->credType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/admin/PasswordMetrics;->length:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/admin/PasswordMetrics;->seqLength:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public maxWith(Landroid/app/admin/PasswordMetrics;)V
    .registers 4

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->credType:I

    iget v1, p1, Landroid/app/admin/PasswordMetrics;->credType:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->credType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_11

    const/4 v1, 0x3

    if-eq v0, v1, :cond_11

    return-void

    :cond_11
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->length:I

    iget v1, p1, Landroid/app/admin/PasswordMetrics;->length:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->length:I

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    iget v1, p1, Landroid/app/admin/PasswordMetrics;->letters:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    iget v1, p1, Landroid/app/admin/PasswordMetrics;->upperCase:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    iget v1, p1, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    iget v1, p1, Landroid/app/admin/PasswordMetrics;->numeric:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    iget v1, p1, Landroid/app/admin/PasswordMetrics;->symbols:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    iget v1, p1, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    iget v1, p1, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->seqLength:I

    iget v1, p1, Landroid/app/admin/PasswordMetrics;->seqLength:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->seqLength:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->credType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->length:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->seqLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
