# classes4.dex

.class public final Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Property"
.end annotation


# static fields
.field public static final DH_DEFAULT_PARAMS:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;

.field public static final DSA_DEFAULT_PARAMS:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;

.field public static final EC_IMPLICITLY_CA:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;


# instance fields
.field private final name:Ljava/lang/String;

.field private final type:Ljava/lang/Class;


# direct methods
.method static bridge synthetic -$$Nest$fgetname(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->name:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettype(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;)Ljava/lang/Class;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->type:Ljava/lang/Class;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;

    const-class v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    const-string v2, "ecImplicitlyCA"

    invoke-direct {v0, v2, v1}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->EC_IMPLICITLY_CA:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;

    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;

    const-class v1, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    const-string v2, "dhDefaultParams"

    invoke-direct {v0, v2, v1}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->DH_DEFAULT_PARAMS:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;

    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;

    const-class v1, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    const-string v2, "dsaDefaultParams"

    invoke-direct {v0, v2, v1}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->DSA_DEFAULT_PARAMS:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->type:Ljava/lang/Class;

    return-void
.end method
