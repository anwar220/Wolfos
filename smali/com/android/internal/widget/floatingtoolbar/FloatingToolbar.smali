# classes4.dex

.class public final Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;
.super Ljava/lang/Object;


# static fields
.field public static final FLOATING_TOOLBAR_TAG:Ljava/lang/String; = "floating_toolbar"

.field private static final NO_OP_MENUITEM_CLICK_LISTENER:Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private final mContentRect:Landroid/graphics/Rect;

.field private mMenu:Landroid/view/Menu;

.field private mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private final mMenuItemComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mOrientationChangeHandler:Landroid/view/View$OnLayoutChangeListener;

.field private final mPopup:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;

.field private final mWindow:Landroid/view/Window;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPopup(Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;)Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mPopup:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->NO_OP_MENUITEM_CLICK_LISTENER:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/view/Window;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mContentRect:Landroid/graphics/Rect;

    sget-object v0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->NO_OP_MENUITEM_CLICK_LISTENER:Landroid/view/MenuItem$OnMenuItemClickListener;

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    new-instance v0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$1;-><init>(Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;)V

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mOrientationChangeHandler:Landroid/view/View$OnLayoutChangeListener;

    new-instance v0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mMenuItemComparator:Ljava/util/Comparator;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Window;

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;->createInstance(Landroid/content/Context;Landroid/view/View;)Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mPopup:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;

    return-void
.end method

.method private doShow()V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mMenu:Landroid/view/Menu;

    invoke-static {v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->getVisibleAndEnabledMenuItems(Landroid/view/Menu;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mMenuItemComparator:Ljava/util/Comparator;

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mPopup:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mContentRect:Landroid/graphics/Rect;

    invoke-interface {v1, v0, v2, v3}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;->show(Ljava/util/List;Landroid/view/MenuItem$OnMenuItemClickListener;Landroid/graphics/Rect;)V

    return-void
.end method

.method private static getVisibleAndEnabledMenuItems(Landroid/view/Menu;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_6
    if-eqz p0, :cond_32

    invoke-interface {p0}, Landroid/view/Menu;->size()I

    move-result v2

    if-ge v1, v2, :cond_32

    invoke-interface {p0, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    if-eqz v3, :cond_2c

    invoke-static {v3}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->getVisibleAndEnabledMenuItems(Landroid/view/Menu;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2f

    :cond_2c
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2f
    :goto_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_32
    return-object v0
.end method

.method static synthetic lambda$new$1(Landroid/view/MenuItem;Landroid/view/MenuItem;)I
    .registers 7

    invoke-interface {p0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const v3, 0x1020041

    if-ne v0, v3, :cond_14

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v3, :cond_12

    goto :goto_13

    :cond_12
    move v1, v2

    :goto_13
    return v1

    :cond_14
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v3, :cond_1c

    return v4

    :cond_1c
    invoke-interface {p0}, Landroid/view/MenuItem;->requiresActionButton()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {p1}, Landroid/view/MenuItem;->requiresActionButton()Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_2a

    :cond_29
    move v1, v2

    :goto_2a
    return v1

    :cond_2b
    invoke-interface {p1}, Landroid/view/MenuItem;->requiresActionButton()Z

    move-result v0

    if-eqz v0, :cond_32

    return v4

    :cond_32
    invoke-interface {p0}, Landroid/view/MenuItem;->requiresOverflow()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {p1}, Landroid/view/MenuItem;->requiresOverflow()Z

    move-result v0

    xor-int/2addr v0, v4

    return v0

    :cond_3e
    invoke-interface {p1}, Landroid/view/MenuItem;->requiresOverflow()Z

    move-result v0

    if-eqz v0, :cond_45

    return v2

    :cond_45
    invoke-interface {p0}, Landroid/view/MenuItem;->getOrder()I

    move-result v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getOrder()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method static synthetic lambda$static$0(Landroid/view/MenuItem;)Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method private registerOrientationHandler()V
    .registers 3

    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->unregisterOrientationHandler()V

    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mOrientationChangeHandler:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private unregisterOrientationHandler()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mOrientationChangeHandler:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->unregisterOrientationHandler()V

    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mPopup:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;

    invoke-interface {v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;->dismiss()V

    return-void
.end method

.method public hide()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mPopup:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;

    invoke-interface {v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;->hide()V

    return-void
.end method

.method public isHidden()Z
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mPopup:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;

    invoke-interface {v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;->isHidden()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mPopup:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;

    invoke-interface {v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;->isShowing()Z

    move-result v0

    return v0
.end method

.method public setContentRect(Landroid/graphics/Rect;)Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;
    .registers 4

    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mContentRect:Landroid/graphics/Rect;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-object p0
.end method

.method public setMenu(Landroid/view/Menu;)Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;
    .registers 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Menu;

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mMenu:Landroid/view/Menu;

    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;
    .registers 3

    if-eqz p1, :cond_5

    iput-object p1, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    goto :goto_9

    :cond_5
    sget-object v0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->NO_OP_MENUITEM_CLICK_LISTENER:Landroid/view/MenuItem$OnMenuItemClickListener;

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    :goto_9
    return-object p0
.end method

.method public setOutsideTouchable(ZLandroid/widget/PopupWindow$OnDismissListener;)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mPopup:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;->setOutsideTouchable(ZLandroid/widget/PopupWindow$OnDismissListener;)Z

    return-void
.end method

.method public setSuggestedWidth(I)Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mPopup:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;->setSuggestedWidth(I)V

    return-object p0
.end method

.method public show()Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->registerOrientationHandler()V

    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->doShow()V

    return-object p0
.end method

.method public updateLayout()Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mPopup:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;

    invoke-interface {v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->doShow()V

    :cond_b
    return-object p0
.end method
