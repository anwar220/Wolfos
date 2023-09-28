# classes4.dex

.class interface abstract Lcom/android/internal/app/ResolverComparatorModel;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getComparator()Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getScore(Landroid/content/ComponentName;)F
.end method

.method public abstract notifyOnTargetSelected(Landroid/content/ComponentName;)V
.end method
