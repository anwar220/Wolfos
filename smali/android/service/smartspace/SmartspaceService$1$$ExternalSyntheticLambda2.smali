# classes3.dex

.class public final synthetic Landroid/service/smartspace/SmartspaceService$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Landroid/service/smartspace/SmartspaceService;

    check-cast p2, Landroid/app/smartspace/SmartspaceSessionId;

    invoke-static {p1, p2}, Landroid/service/smartspace/SmartspaceService$1;->lambda$onDestroySmartspaceSession$4(Ljava/lang/Object;Landroid/app/smartspace/SmartspaceSessionId;)V

    return-void
.end method