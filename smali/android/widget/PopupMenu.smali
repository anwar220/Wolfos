# classes4.dex

.class public Landroid/widget/PopupMenu;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/PopupMenu$OnDismissListener;,
        Landroid/widget/PopupMenu$OnMenuItemClickListener;
    }
.end annotation


# instance fields
.field private final mAnchor:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private mDragListener:Landroid/view/View$OnTouchListener;

.field private final mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mMenuItemClickListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

.field private mOnDismissListener:Landroid/widget/PopupMenu$OnDismissListener;

.field private final mPopup:Lcom/android/internal/view/menu/MenuPopupHelper;


# direct methods
.method static bridge synthetic -$$Nest$fgetmMenuItemClickListener(Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu$OnMenuItemClickListener;
    .registers 1

    iget-object p0, p0, Landroid/widget/PopupMenu;->mMenuItemClickListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnDismissListener(Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu$OnDismissListener;
    .registers 1

    iget-object p0, p0, Landroid/widget/PopupMenu;->mOnDismissListener:Landroid/widget/PopupMenu$OnDismissListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPopup(Landroid/widget/PopupMenu;)Lcom/android/internal/view/menu/MenuPopupHelper;
    .registers 1

    iget-object p0, p0, Landroid/widget/PopupMenu;->mPopup:Lcom/android/internal/view/menu/MenuPopupHelper;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .registers 10

    const v4, 0x1010300

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;III)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;III)V
    .registers 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/PopupMenu;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/widget/PopupMenu;->mAnchor:Landroid/view/View;

    new-instance v2, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v2, p1}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/widget/PopupMenu;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    new-instance v0, Landroid/widget/PopupMenu$1;

    invoke-direct {v0, p0}, Landroid/widget/PopupMenu$1;-><init>(Landroid/widget/PopupMenu;)V

    invoke-virtual {v2, v0}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    new-instance v7, Lcom/android/internal/view/menu/MenuPopupHelper;

    const/4 v4, 0x0

    move-object v0, v7

    move-object v1, p1

    move-object v3, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    iput-object v7, p0, Landroid/widget/PopupMenu;->mPopup:Lcom/android/internal/view/menu/MenuPopupHelper;

    invoke-virtual {v7, p3}, Lcom/android/internal/view/menu/MenuPopupHelper;->setGravity(I)V

    new-instance v0, Landroid/widget/PopupMenu$2;

    invoke-direct {v0, p0}, Landroid/widget/PopupMenu$2;-><init>(Landroid/widget/PopupMenu;)V

    invoke-virtual {v7, v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    iget-object v0, p0, Landroid/widget/PopupMenu;->mPopup:Lcom/android/internal/view/menu/MenuPopupHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->dismiss()V

    return-void
.end method

.method public getDragToOpenListener()Landroid/view/View$OnTouchListener;
    .registers 3

    iget-object v0, p0, Landroid/widget/PopupMenu;->mDragListener:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_d

    new-instance v0, Landroid/widget/PopupMenu$3;

    iget-object v1, p0, Landroid/widget/PopupMenu;->mAnchor:Landroid/view/View;

    invoke-direct {v0, p0, v1}, Landroid/widget/PopupMenu$3;-><init>(Landroid/widget/PopupMenu;Landroid/view/View;)V

    iput-object v0, p0, Landroid/widget/PopupMenu;->mDragListener:Landroid/view/View$OnTouchListener;

    :cond_d
    iget-object v0, p0, Landroid/widget/PopupMenu;->mDragListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method public getGravity()I
    .registers 2

    iget-object v0, p0, Landroid/widget/PopupMenu;->mPopup:Lcom/android/internal/view/menu/MenuPopupHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->getGravity()I

    move-result v0

    return v0
.end method

.method public getMenu()Landroid/view/Menu;
    .registers 2

    iget-object v0, p0, Landroid/widget/PopupMenu;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .registers 3

    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Landroid/widget/PopupMenu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getMenuListView()Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Landroid/widget/PopupMenu;->mPopup:Lcom/android/internal/view/menu/MenuPopupHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    iget-object v0, p0, Landroid/widget/PopupMenu;->mPopup:Lcom/android/internal/view/menu/MenuPopupHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->getPopup()Lcom/android/internal/view/menu/MenuPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopup;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public inflate(I)V
    .registers 4

    invoke-virtual {p0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/PopupMenu;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public setForceShowIcon(Z)V
    .registers 3

    iget-object v0, p0, Landroid/widget/PopupMenu;->mPopup:Lcom/android/internal/view/menu/MenuPopupHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/MenuPopupHelper;->setForceShowIcon(Z)V

    return-void
.end method

.method public setGravity(I)V
    .registers 3

    iget-object v0, p0, Landroid/widget/PopupMenu;->mPopup:Lcom/android/internal/view/menu/MenuPopupHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/MenuPopupHelper;->setGravity(I)V

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/PopupMenu;->mOnDismissListener:Landroid/widget/PopupMenu$OnDismissListener;

    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/PopupMenu;->mMenuItemClickListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    return-void
.end method

.method public show()V
    .registers 2

    iget-object v0, p0, Landroid/widget/PopupMenu;->mPopup:Lcom/android/internal/view/menu/MenuPopupHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->show()V

    return-void
.end method
