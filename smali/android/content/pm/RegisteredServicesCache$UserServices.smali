# classes.dex

.class Landroid/content/pm/RegisteredServicesCache$UserServices;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/RegisteredServicesCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserServices"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mBindInstantServiceAllowed:Z

.field mPersistentServicesFileDidNotExist:Z

.field final persistentServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TV;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field services:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TV;",
            "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/RegisteredServicesCache$UserServices;->persistentServices:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/RegisteredServicesCache$UserServices;->mPersistentServicesFileDidNotExist:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/pm/RegisteredServicesCache$UserServices;->mBindInstantServiceAllowed:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/pm/RegisteredServicesCache$UserServices-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/content/pm/RegisteredServicesCache$UserServices;-><init>()V

    return-void
.end method