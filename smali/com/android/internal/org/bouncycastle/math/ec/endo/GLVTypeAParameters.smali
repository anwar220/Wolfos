# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeAParameters;
.super Ljava/lang/Object;


# instance fields
.field protected final i:Ljava/math/BigInteger;

.field protected final lambda:Ljava/math/BigInteger;

.field protected final splitParams:Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeAParameters;->i:Ljava/math/BigInteger;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeAParameters;->lambda:Ljava/math/BigInteger;

    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeAParameters;->splitParams:Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;

    return-void
.end method


# virtual methods
.method public getI()Ljava/math/BigInteger;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeAParameters;->i:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getLambda()Ljava/math/BigInteger;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeAParameters;->lambda:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getSplitParams()Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeAParameters;->splitParams:Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;

    return-object v0
.end method
