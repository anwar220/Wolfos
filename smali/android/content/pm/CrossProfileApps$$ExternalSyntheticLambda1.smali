# classes.dex

.class public final synthetic Landroid/content/pm/CrossProfileApps$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/content/pm/CrossProfileApps;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/CrossProfileApps;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/CrossProfileApps$$ExternalSyntheticLambda1;->f$0:Landroid/content/pm/CrossProfileApps;

    iput-boolean p2, p0, Landroid/content/pm/CrossProfileApps$$ExternalSyntheticLambda1;->f$1:Z

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Landroid/content/pm/CrossProfileApps$$ExternalSyntheticLambda1;->f$0:Landroid/content/pm/CrossProfileApps;

    iget-boolean v1, p0, Landroid/content/pm/CrossProfileApps$$ExternalSyntheticLambda1;->f$1:Z

    invoke-virtual {v0, v1}, Landroid/content/pm/CrossProfileApps;->lambda$getProfileSwitchingLabel$0$android-content-pm-CrossProfileApps(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
