# classes.dex

.class public final Landroid/app/smartspace/SmartspaceConfig$Builder;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/smartspace/SmartspaceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mExtras:Landroid/os/Bundle;

.field private final mPackageName:Ljava/lang/String;

.field private mSmartspaceTargetCount:I

.field private final mUiSurface:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Landroid/app/smartspace/SmartspaceConfig$Builder;->mSmartspaceTargetCount:I

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceConfig$Builder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceConfig$Builder;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Landroid/app/smartspace/SmartspaceConfig$Builder;->mUiSurface:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Landroid/app/smartspace/SmartspaceConfig;
    .registers 8

    new-instance v6, Landroid/app/smartspace/SmartspaceConfig;

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceConfig$Builder;->mUiSurface:Ljava/lang/String;

    iget v2, p0, Landroid/app/smartspace/SmartspaceConfig$Builder;->mSmartspaceTargetCount:I

    iget-object v3, p0, Landroid/app/smartspace/SmartspaceConfig$Builder;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/app/smartspace/SmartspaceConfig$Builder;->mExtras:Landroid/os/Bundle;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/app/smartspace/SmartspaceConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Landroid/app/smartspace/SmartspaceConfig-IA;)V

    return-object v6
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/app/smartspace/SmartspaceConfig$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/smartspace/SmartspaceConfig$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public setSmartspaceTargetCount(I)Landroid/app/smartspace/SmartspaceConfig$Builder;
    .registers 2

    iput p1, p0, Landroid/app/smartspace/SmartspaceConfig$Builder;->mSmartspaceTargetCount:I

    return-object p0
.end method
