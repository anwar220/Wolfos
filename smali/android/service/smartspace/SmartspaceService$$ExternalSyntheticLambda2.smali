# classes3.dex

.class public final synthetic Landroid/service/smartspace/SmartspaceService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/service/smartspace/SmartspaceService;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:Landroid/service/smartspace/SmartspaceService$CallbackWrapper;


# direct methods
.method public synthetic constructor <init>(Landroid/service/smartspace/SmartspaceService;Ljava/util/ArrayList;Landroid/service/smartspace/SmartspaceService$CallbackWrapper;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/smartspace/SmartspaceService$$ExternalSyntheticLambda2;->f$0:Landroid/service/smartspace/SmartspaceService;

    iput-object p2, p0, Landroid/service/smartspace/SmartspaceService$$ExternalSyntheticLambda2;->f$1:Ljava/util/ArrayList;

    iput-object p3, p0, Landroid/service/smartspace/SmartspaceService$$ExternalSyntheticLambda2;->f$2:Landroid/service/smartspace/SmartspaceService$CallbackWrapper;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService$$ExternalSyntheticLambda2;->f$0:Landroid/service/smartspace/SmartspaceService;

    iget-object v1, p0, Landroid/service/smartspace/SmartspaceService$$ExternalSyntheticLambda2;->f$1:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/service/smartspace/SmartspaceService$$ExternalSyntheticLambda2;->f$2:Landroid/service/smartspace/SmartspaceService$CallbackWrapper;

    invoke-virtual {v0, v1, v2}, Landroid/service/smartspace/SmartspaceService;->lambda$doRegisterSmartspaceUpdates$0$android-service-smartspace-SmartspaceService(Ljava/util/ArrayList;Landroid/service/smartspace/SmartspaceService$CallbackWrapper;)V

    return-void
.end method
