# classes4.dex

.class Landroid/window/TransitionMetrics$1;
.super Landroid/util/Singleton;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TransitionMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Landroid/window/TransitionMetrics;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Landroid/window/TransitionMetrics;
    .registers 4

    new-instance v0, Landroid/window/TransitionMetrics;

    invoke-static {}, Landroid/window/WindowOrganizer;->getTransitionMetricsReporter()Landroid/window/ITransitionMetricsReporter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/window/TransitionMetrics;-><init>(Landroid/window/ITransitionMetricsReporter;Landroid/window/TransitionMetrics-IA;)V

    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Landroid/window/TransitionMetrics$1;->create()Landroid/window/TransitionMetrics;

    move-result-object v0

    return-object v0
.end method
