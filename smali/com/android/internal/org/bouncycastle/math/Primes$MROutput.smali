# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/math/Primes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MROutput"
.end annotation


# instance fields
.field private factor:Ljava/math/BigInteger;

.field private provablyComposite:Z


# direct methods
.method static bridge synthetic -$$Nest$smprobablyPrime()Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;
    .registers 1

    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;->probablyPrime()Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smprovablyCompositeNotPrimePower()Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;
    .registers 1

    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;->provablyCompositeNotPrimePower()Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smprovablyCompositeWithFactor(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;->provablyCompositeWithFactor(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>(ZLjava/math/BigInteger;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;->provablyComposite:Z

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;->factor:Ljava/math/BigInteger;

    return-void
.end method

.method private static probablyPrime()Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;
    .registers 3

    new-instance v0, Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;-><init>(ZLjava/math/BigInteger;)V

    return-object v0
.end method

.method private static provablyCompositeNotPrimePower()Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;
    .registers 3

    new-instance v0, Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;-><init>(ZLjava/math/BigInteger;)V

    return-object v0
.end method

.method private static provablyCompositeWithFactor(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;
    .registers 3

    new-instance v0, Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;-><init>(ZLjava/math/BigInteger;)V

    return-object v0
.end method


# virtual methods
.method public getFactor()Ljava/math/BigInteger;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;->factor:Ljava/math/BigInteger;

    return-object v0
.end method

.method public isNotPrimePower()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;->provablyComposite:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;->factor:Ljava/math/BigInteger;

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isProvablyComposite()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;->provablyComposite:Z

    return v0
.end method
