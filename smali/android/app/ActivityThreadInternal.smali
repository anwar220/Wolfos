# classes.dex

.class interface abstract Landroid/app/ActivityThreadInternal;
.super Ljava/lang/Object;


# virtual methods
.method public abstract collectComponentCallbacks(Z)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentCallbacks2;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getApplication()Landroid/app/Application;
.end method

.method public abstract getSystemContext()Landroid/app/ContextImpl;
.end method

.method public abstract getSystemUiContextNoCreate()Landroid/app/ContextImpl;
.end method

.method public abstract isCachedProcessState()Z
.end method

.method public abstract isInDensityCompatMode()Z
.end method
