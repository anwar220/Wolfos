# classes.dex

.class interface abstract Landroid/app/SystemServiceRegistryJuiStub;
.super Ljava/lang/Object;


# direct methods
.method public static getInstance()Landroid/app/SystemServiceRegistryJuiStub;
    .registers 1

    const-class v0, Landroid/app/SystemServiceRegistryJuiStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SystemServiceRegistryJuiStub;

    return-object v0
.end method


# virtual methods
.method public abstract registerServices()V
.end method
