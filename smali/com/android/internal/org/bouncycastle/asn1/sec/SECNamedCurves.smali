# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;
.super Ljava/lang/Object;


# static fields
.field static final curves:Ljava/util/Hashtable;

.field static final names:Ljava/util/Hashtable;

.field static final objIds:Ljava/util/Hashtable;

.field static secp112r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp112r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp128r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp128r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp160k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp160r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp160r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp192k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp192r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp224k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp224r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp256k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp256r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp384r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp521r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect113r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect113r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect131r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect131r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect163k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect163r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect163r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect193r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect193r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect233k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect233r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect239k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect283k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect283r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect409k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect409r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect571k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect571r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;


# direct methods
.method static bridge synthetic -$$Nest$smconfigureBasepoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->configureBasepoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smconfigureCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->configureCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smconfigureCurveGLV(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->configureCurveGLV(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smfromHex(Ljava/lang/String;)Ljava/math/BigInteger;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->fromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$1;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$1;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp112r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$2;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$2;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp112r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$3;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$3;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp128r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$4;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$4;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp128r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$5;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$5;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp160k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$6;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$6;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp160r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$7;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$7;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp160r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$8;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$8;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp192k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$9;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$9;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp192r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$10;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$10;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp224k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$11;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$11;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp224r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$12;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$12;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp256k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$13;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$13;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp256r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$14;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$14;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp384r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$15;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$15;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp521r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$16;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$16;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect113r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$17;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$17;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect113r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$18;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$18;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect131r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$19;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$19;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect131r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$20;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$20;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect163k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$21;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$21;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect163r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$22;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$22;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect163r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$23;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$23;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect193r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$24;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$24;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect193r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$25;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$25;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect233k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$26;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$26;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect233r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$27;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$27;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect239k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$28;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$28;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect283k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$29;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$29;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect283r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$30;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$30;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect409k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$31;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$31;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect409r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$32;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$32;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect571k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$33;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$33;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect571r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->objIds:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->curves:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->names:Ljava/util/Hashtable;

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp112r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp112r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "secp112r1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp112r2:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp112r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "secp112r2"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp128r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp128r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "secp128r1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp128r2:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp128r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "secp128r2"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp160k1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp160k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "secp160k1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp160r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp160r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "secp160r1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp160r2:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp160r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "secp160r2"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp192k1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp192k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "secp192k1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp192r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp192r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "secp192r1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp224k1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp224k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "secp224k1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp224r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp224r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "secp224r1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256k1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp256k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "secp256k1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp256r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "secp256r1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp384r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp384r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "secp384r1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp521r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp521r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "secp521r1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect113r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect113r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "sect113r1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect113r2:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect113r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "sect113r2"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect131r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect131r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "sect131r1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect131r2:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect131r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "sect131r2"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect163k1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect163k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "sect163k1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect163r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect163r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "sect163r1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect163r2:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect163r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "sect163r2"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect193r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect193r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "sect193r1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect193r2:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect193r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "sect193r2"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect233k1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect233k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "sect233k1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect233r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect233r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "sect233r1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect239k1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect239k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "sect239k1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect283k1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect283k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "sect283k1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect283r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect283r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "sect283r1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect409k1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect409k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "sect409k1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect409r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect409r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "sect409r1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect571k1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect571k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "sect571k1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect571r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect571r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "sect571r1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

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

.method private static configureCurveGLV(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .registers 4

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->configure()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Config;

    move-result-object v0

    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBEndomorphism;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBEndomorphism;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Config;->setEndomorphism(Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Config;->create()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    return-object v0
.end method

.method static defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V
    .registers 4

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->names:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->curves:Ljava/util/Hashtable;

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

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->getOID(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_c

    :cond_8
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->getByOID(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v1

    :goto_c
    return-object v1
.end method

.method public static getByOID(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .registers 3

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->curves:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    if-nez v0, :cond_c

    const/4 v1, 0x0

    goto :goto_10

    :cond_c
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v1

    :goto_10
    return-object v1
.end method

.method public static getName(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->names:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getNames()Ljava/util/Enumeration;
    .registers 1

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->names:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public static getOID(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 3

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method
