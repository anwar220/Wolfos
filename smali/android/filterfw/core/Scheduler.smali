# classes.dex

.class public abstract Landroid/filterfw/core/Scheduler;
.super Ljava/lang/Object;


# instance fields
.field private mGraph:Landroid/filterfw/core/FilterGraph;


# direct methods
.method constructor <init>(Landroid/filterfw/core/FilterGraph;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/filterfw/core/Scheduler;->mGraph:Landroid/filterfw/core/FilterGraph;

    return-void
.end method


# virtual methods
.method finished()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method getGraph()Landroid/filterfw/core/FilterGraph;
    .registers 2

    iget-object v0, p0, Landroid/filterfw/core/Scheduler;->mGraph:Landroid/filterfw/core/FilterGraph;

    return-object v0
.end method

.method abstract reset()V
.end method

.method abstract scheduleNextNode()Landroid/filterfw/core/Filter;
.end method
