# classes3.dex

.class public final synthetic Landroid/service/smartspace/SmartspaceService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/service/smartspace/SmartspaceService;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Landroid/service/smartspace/SmartspaceService;Ljava/util/ArrayList;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/smartspace/SmartspaceService$$ExternalSyntheticLambda1;->f$0:Landroid/service/smartspace/SmartspaceService;

    iput-object p2, p0, Landroid/service/smartspace/SmartspaceService$$ExternalSyntheticLambda1;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService$$ExternalSyntheticLambda1;->f$0:Landroid/service/smartspace/SmartspaceService;

    iget-object v1, p0, Landroid/service/smartspace/SmartspaceService$$ExternalSyntheticLambda1;->f$1:Ljava/util/ArrayList;

    check-cast p1, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;

    invoke-virtual {v0, v1, p1}, Landroid/service/smartspace/SmartspaceService;->lambda$doRegisterSmartspaceUpdates$1$android-service-smartspace-SmartspaceService(Ljava/util/ArrayList;Landroid/service/smartspace/SmartspaceService$CallbackWrapper;)V

    return-void
.end method
