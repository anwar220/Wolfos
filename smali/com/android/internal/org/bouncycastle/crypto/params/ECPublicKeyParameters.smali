# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;
.super Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyParameters;


# instance fields
.field private final q:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;


# direct methods
.method public constructor <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyParameters;-><init>(ZLcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;)V

    invoke-virtual {p2, p1}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->validatePublicPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;->q:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    return-void
.end method


# virtual methods
.method public getQ()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;->q:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method
