# classes.dex

.class public final synthetic Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IpcDataCache$RemoteCall;


# instance fields
.field public final synthetic f$0:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method public synthetic constructor <init>(Landroid/app/admin/DevicePolicyManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda8;->f$0:Landroid/app/admin/DevicePolicyManager;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda8;->f$0:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->lambda$new$5$android-app-admin-DevicePolicyManager(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method