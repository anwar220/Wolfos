# classes4.dex

.class public interface abstract Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;
.super Ljava/lang/Object;


# direct methods
.method public static createInstance(Landroid/content/Context;Landroid/view/View;)Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;
    .registers 3

    new-instance v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public abstract dismiss()V
.end method

.method public abstract hide()V
.end method

.method public abstract isHidden()Z
.end method

.method public abstract isShowing()Z
.end method

.method public abstract setOutsideTouchable(ZLandroid/widget/PopupWindow$OnDismissListener;)Z
.end method

.method public abstract setSuggestedWidth(I)V
.end method

.method public abstract setWidthChanged(Z)V
.end method

.method public abstract show(Ljava/util/List;Landroid/view/MenuItem$OnMenuItemClickListener;Landroid/graphics/Rect;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;",
            "Landroid/view/MenuItem$OnMenuItemClickListener;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation
.end method
