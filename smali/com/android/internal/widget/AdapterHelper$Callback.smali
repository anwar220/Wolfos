# classes4.dex

.class interface abstract Lcom/android/internal/widget/AdapterHelper$Callback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/AdapterHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Callback"
.end annotation


# virtual methods
.method public abstract findViewHolder(I)Lcom/android/internal/widget/RecyclerView$ViewHolder;
.end method

.method public abstract markViewHoldersUpdated(IILjava/lang/Object;)V
.end method

.method public abstract offsetPositionsForAdd(II)V
.end method

.method public abstract offsetPositionsForMove(II)V
.end method

.method public abstract offsetPositionsForRemovingInvisible(II)V
.end method

.method public abstract offsetPositionsForRemovingLaidOutOrNewView(II)V
.end method

.method public abstract onDispatchFirstPass(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V
.end method

.method public abstract onDispatchSecondPass(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V
.end method
