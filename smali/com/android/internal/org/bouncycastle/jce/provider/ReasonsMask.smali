# classes4.dex

.class Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;
.super Ljava/lang/Object;


# static fields
.field static final allReasons:Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;


# instance fields
.field private _reasons:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;

    const v1, 0x80ff

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;-><init>(I)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->allReasons:Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    return-void
.end method

.method constructor <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    return-void
.end method


# virtual methods
.method addReasons(Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;)V
    .registers 4

    iget v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->getReasons()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    return-void
.end method

.method getReasons()I
    .registers 2

    iget v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    return v0
.end method

.method hasNewReasons(Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;)Z
    .registers 5

    iget v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->getReasons()I

    move-result v1

    iget v2, p0, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    xor-int/2addr v1, v2

    or-int/2addr v0, v1

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method intersect(Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;)Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;
    .registers 6

    new-instance v0, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;-><init>()V

    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;

    iget v2, p0, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->getReasons()I

    move-result v3

    and-int/2addr v2, v3

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->addReasons(Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;)V

    return-object v0
.end method

.method isAllReasons()Z
    .registers 3

    iget v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    sget-object v1, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->allReasons:Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;

    iget v1, v1, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
