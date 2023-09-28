# classes.dex

.class public final Landroid/app/smartspace/SmartspaceTargetEvent$Builder;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/smartspace/SmartspaceTargetEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mEventType:I

.field private mSmartspaceActionId:Ljava/lang/String;

.field private mSmartspaceTarget:Landroid/app/smartspace/SmartspaceTarget;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;->mEventType:I

    return-void
.end method


# virtual methods
.method public build()Landroid/app/smartspace/SmartspaceTargetEvent;
    .registers 6

    new-instance v0, Landroid/app/smartspace/SmartspaceTargetEvent;

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;->mSmartspaceTarget:Landroid/app/smartspace/SmartspaceTarget;

    iget-object v2, p0, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;->mSmartspaceActionId:Ljava/lang/String;

    iget v3, p0, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;->mEventType:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/smartspace/SmartspaceTargetEvent;-><init>(Landroid/app/smartspace/SmartspaceTarget;Ljava/lang/String;ILandroid/app/smartspace/SmartspaceTargetEvent-IA;)V

    return-object v0
.end method

.method public setSmartspaceActionId(Ljava/lang/String;)Landroid/app/smartspace/SmartspaceTargetEvent$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;->mSmartspaceActionId:Ljava/lang/String;

    return-object p0
.end method

.method public setSmartspaceTarget(Landroid/app/smartspace/SmartspaceTarget;)Landroid/app/smartspace/SmartspaceTargetEvent$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;->mSmartspaceTarget:Landroid/app/smartspace/SmartspaceTarget;

    return-object p0
.end method
