# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;


# instance fields
.field private c:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

.field private final encoding:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

.field private p:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;


# direct methods
.method public constructor <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)V
    .registers 4

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;[B)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;[B)V
    .registers 5

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;->c:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;->encoding:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Z)V
    .registers 5

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;->p:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p1, p2}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;->encoding:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    return-void
.end method


# virtual methods
.method public declared-synchronized getPoint()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;->p:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;->c:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;->encoding:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;->p:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    :cond_17
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;->p:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    monitor-exit p0

    return-object v0

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPointEncoding()[B
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;->encoding:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public isPointCompressed()Z
    .registers 5

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;->encoding:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    array-length v2, v0

    if-lez v2, :cond_17

    aget-byte v2, v0, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_16

    aget-byte v2, v0, v1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_17

    :cond_16
    const/4 v1, 0x1

    :cond_17
    return v1
.end method

.method public toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;->encoding:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method
