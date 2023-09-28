# classes.dex

.class public Landroid/app/blob/BlobStoreManagerFrameworkInitializer;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initialize()V
    .registers 3

    const-class v0, Landroid/app/blob/BlobStoreManager;

    new-instance v1, Landroid/app/blob/BlobStoreManagerFrameworkInitializer$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/app/blob/BlobStoreManagerFrameworkInitializer$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "blob_store"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;)V

    return-void
.end method

.method static synthetic lambda$initialize$0(Landroid/content/Context;Landroid/os/IBinder;)Landroid/app/blob/BlobStoreManager;
    .registers 4

    new-instance v0, Landroid/app/blob/BlobStoreManager;

    invoke-static {p1}, Landroid/app/blob/IBlobStoreManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/blob/IBlobStoreManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/app/blob/BlobStoreManager;-><init>(Landroid/content/Context;Landroid/app/blob/IBlobStoreManager;)V

    return-object v0
.end method
