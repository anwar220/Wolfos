# classes3.dex

.class public final synthetic Landroid/service/smartspace/SmartspaceService$1$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Landroid/service/smartspace/SmartspaceService;

    check-cast p2, Landroid/app/smartspace/SmartspaceConfig;

    check-cast p3, Landroid/app/smartspace/SmartspaceSessionId;

    invoke-static {p1, p2, p3}, Landroid/service/smartspace/SmartspaceService$1;->lambda$onCreateSmartspaceSession$0(Ljava/lang/Object;Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;)V

    return-void
.end method
