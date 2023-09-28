# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;
.super Ljava/lang/Object;


# static fields
.field static c2pnb163v1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static c2pnb163v2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static c2pnb163v3:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static c2pnb176w1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static c2pnb208w1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static c2pnb272w1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static c2pnb304w1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static c2pnb368w1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static c2tnb191v1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static c2tnb191v2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static c2tnb191v3:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static c2tnb239v1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static c2tnb239v2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static c2tnb239v3:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static c2tnb359v1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static c2tnb431r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static final curves:Ljava/util/Hashtable;

.field static final names:Ljava/util/Hashtable;

.field static final objIds:Ljava/util/Hashtable;

.field static prime192v1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static prime192v2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static prime192v3:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static prime239v1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static prime239v2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static prime239v3:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static prime256v1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;


# direct methods
.method static bridge synthetic -$$Nest$smconfigureBasepoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->configureBasepoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smconfigureCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->configureCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smfromHex(Ljava/lang/String;)Ljava/math/BigInteger;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->fromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$1;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$1;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->prime192v1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$2;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$2;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->prime192v2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$3;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$3;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->prime192v3:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$4;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$4;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->prime239v1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$5;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$5;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->prime239v2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$6;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$6;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->prime239v3:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$7;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$7;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->prime256v1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$8;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$8;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2pnb163v1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$9;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$9;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2pnb163v2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$10;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$10;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2pnb163v3:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$11;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$11;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2pnb176w1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$12;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$12;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2tnb191v1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$13;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$13;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2tnb191v2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$14;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$14;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2tnb191v3:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$15;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$15;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2pnb208w1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$16;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$16;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2tnb239v1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$17;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$17;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2tnb239v2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$18;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$18;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2tnb239v3:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$19;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$19;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2pnb272w1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$20;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$20;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2pnb304w1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$21;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$21;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2tnb359v1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$22;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$22;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2pnb368w1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$23;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$23;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2tnb431r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->objIds:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->curves:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->names:Ljava/util/Hashtable;

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->prime192v1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->prime192v1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "prime192v1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->prime192v2:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->prime192v2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "prime192v2"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->prime192v3:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->prime192v3:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "prime192v3"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->prime239v1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->prime239v1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "prime239v1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->prime239v2:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->prime239v2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "prime239v2"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->prime239v3:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->prime239v3:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "prime239v3"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->prime256v1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->prime256v1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "prime256v1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2pnb163v1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2pnb163v1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "c2pnb163v1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2pnb163v2:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2pnb163v2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "c2pnb163v2"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2pnb163v3:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2pnb163v3:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "c2pnb163v3"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2pnb176w1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2pnb176w1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "c2pnb176w1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2tnb191v1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2tnb191v1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "c2tnb191v1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2tnb191v2:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2tnb191v2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "c2tnb191v2"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2tnb191v3:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2tnb191v3:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "c2tnb191v3"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2pnb208w1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2pnb208w1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "c2pnb208w1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2tnb239v1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2tnb239v1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "c2tnb239v1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2tnb239v2:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2tnb239v2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "c2tnb239v2"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2tnb239v3:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2tnb239v3:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "c2tnb239v3"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2pnb272w1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2pnb272w1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "c2pnb272w1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2pnb304w1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2pnb304w1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "c2pnb304w1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2tnb359v1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2tnb359v1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "c2tnb359v1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2pnb368w1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2pnb368w1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "c2pnb368w1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2tnb431r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2tnb431r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "c2tnb431r1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static configureBasepoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;
    .registers 4

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;[B)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;->getPoint()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->configureBasepoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V

    return-object v0
.end method

.method private static configureCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .registers 1

    return-object p0
.end method

.method static defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V
    .registers 4

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->names:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->curves:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static fromHex(Ljava/lang/String;)Ljava/math/BigInteger;
    .registers 4

    new-instance v0, Ljava/math/BigInteger;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static getByName(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .registers 3

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v0, :cond_13

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->getByOID(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v1

    return-object v1

    :cond_13
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getByOID(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .registers 3

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->curves:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v1

    return-object v1

    :cond_f
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getName(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->names:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getNames()Ljava/util/Enumeration;
    .registers 1

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public static getOID(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 3

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method
