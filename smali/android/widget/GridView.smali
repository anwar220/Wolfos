# classes4.dex

.class public Landroid/widget/GridView;
.super Landroid/widget/AbsListView;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/GridView$StretchMode;
    }
.end annotation


# static fields
.field public static final AUTO_FIT:I = -0x1

.field public static final NO_STRETCH:I = 0x0

.field public static final STRETCH_COLUMN_WIDTH:I = 0x2

.field public static final STRETCH_SPACING:I = 0x1

.field public static final STRETCH_SPACING_UNIFORM:I = 0x3


# instance fields
.field private mColumnWidth:I

.field private mGravity:I

.field private mHorizontalSpacing:I

.field private mNumColumns:I

.field private mReferenceView:Landroid/view/View;

.field private mReferenceViewInSelectedRow:Landroid/view/View;

.field private mRequestedColumnWidth:I

.field private mRequestedHorizontalSpacing:I

.field private mRequestedNumColumns:I

.field private mStretchMode:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mVerticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x1010071

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 16

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/GridView;->mNumColumns:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    iput v1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    const/4 v2, 0x2

    iput v2, p0, Landroid/widget/GridView;->mStretchMode:I

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    iput-object v3, p0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    const v3, 0x800003

    iput v3, p0, Landroid/widget/GridView;->mGravity:I

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/widget/GridView;->mTempRect:Landroid/graphics/Rect;

    sget-object v3, Lcom/android/internal/R$styleable;->GridView:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    sget-object v6, Lcom/android/internal/R$styleable;->GridView:[I

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move-object v8, v3

    move v9, p3

    move v10, p4

    invoke-virtual/range {v4 .. v10}, Landroid/widget/GridView;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    invoke-virtual {v3, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    const/4 v7, 0x3

    invoke-virtual {v3, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    if-ltz v2, :cond_49

    invoke-virtual {p0, v2}, Landroid/widget/GridView;->setStretchMode(I)V

    :cond_49
    const/4 v7, 0x4

    invoke-virtual {v3, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    if-lez v7, :cond_53

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->setColumnWidth(I)V

    :cond_53
    const/4 v8, 0x5

    invoke-virtual {v3, v8, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    invoke-virtual {v3, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    if-ltz v0, :cond_64

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setGravity(I)V

    :cond_64
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private adjustForBottomFadingEdge(Landroid/view/View;II)V
    .registers 8

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    if-le v0, p3, :cond_18

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int/2addr v1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    neg-int v3, v2

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    :cond_18
    return-void
.end method

.method private adjustForTopFadingEdge(Landroid/view/View;II)V
    .registers 7

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    if-ge v0, p2, :cond_19

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    :cond_19
    return-void
.end method

.method private adjustViewsUpOrDown()V
    .registers 6

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4a

    iget-boolean v1, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v1, :cond_23

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-eqz v3, :cond_1f

    iget v3, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    sub-int/2addr v2, v3

    :cond_1f
    if-gez v2, :cond_44

    const/4 v2, 0x0

    goto :goto_44

    :cond_23
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v3, v0

    iget v4, p0, Landroid/widget/GridView;->mItemCount:I

    if-ge v3, v4, :cond_41

    iget v3, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int/2addr v2, v3

    :cond_41
    if-lez v2, :cond_44

    const/4 v2, 0x0

    :cond_44
    :goto_44
    if-eqz v2, :cond_4a

    neg-int v3, v2

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    :cond_4a
    return-void
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .registers 11

    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-boolean v0, p0, Landroid/widget/GridView;->mDataChanged:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Landroid/widget/GridView;->layoutChildren()V

    :cond_d
    const/4 v0, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_37

    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_37

    if-eq v2, v4, :cond_37

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v0

    if-nez v0, :cond_37

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_37

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_37

    invoke-virtual {p0}, Landroid/widget/GridView;->keyPressed()V

    const/4 v0, 0x1

    :cond_37
    if-nez v0, :cond_1a2

    if-eq v2, v4, :cond_1a2

    const/16 v3, 0x82

    const/16 v5, 0x21

    const/4 v6, 0x2

    sparse-switch p1, :sswitch_data_1c0

    goto/16 :goto_1a2

    :sswitch_45
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_1a2

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_5a

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_58

    goto :goto_5a

    :cond_58
    move v3, v1

    goto :goto_5b

    :cond_5a
    :goto_5a
    move v3, v4

    :goto_5b
    move v0, v3

    goto/16 :goto_1a2

    :sswitch_5e
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_1a2

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_73

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_71

    goto :goto_73

    :cond_71
    move v3, v1

    goto :goto_74

    :cond_73
    :goto_73
    move v3, v4

    :goto_74
    move v0, v3

    goto/16 :goto_1a2

    :sswitch_77
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_90

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_8c

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->pageScroll(I)Z

    move-result v3

    if-eqz v3, :cond_8a

    goto :goto_8c

    :cond_8a
    move v3, v1

    goto :goto_8d

    :cond_8c
    :goto_8c
    move v3, v4

    :goto_8d
    move v0, v3

    goto/16 :goto_1a2

    :cond_90
    invoke-virtual {p3, v6}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_1a2

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_a5

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_a3

    goto :goto_a5

    :cond_a3
    move v3, v1

    goto :goto_a6

    :cond_a5
    :goto_a5
    move v3, v4

    :goto_a6
    move v0, v3

    goto/16 :goto_1a2

    :sswitch_a9
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_c2

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_be

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->pageScroll(I)Z

    move-result v3

    if-eqz v3, :cond_bc

    goto :goto_be

    :cond_bc
    move v3, v1

    goto :goto_bf

    :cond_be
    :goto_be
    move v3, v4

    :goto_bf
    move v0, v3

    goto/16 :goto_1a2

    :cond_c2
    invoke-virtual {p3, v6}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_1a2

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_d7

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_d5

    goto :goto_d7

    :cond_d5
    move v3, v1

    goto :goto_d8

    :cond_d7
    :goto_d7
    move v3, v4

    :goto_d8
    move v0, v3

    goto/16 :goto_1a2

    :sswitch_db
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_f4

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_f0

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->sequenceScroll(I)Z

    move-result v3

    if-eqz v3, :cond_ee

    goto :goto_f0

    :cond_ee
    move v3, v1

    goto :goto_f1

    :cond_f0
    :goto_f0
    move v3, v4

    :goto_f1
    move v0, v3

    goto/16 :goto_1a2

    :cond_f4
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_1a2

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_109

    invoke-virtual {p0, v4}, Landroid/widget/GridView;->sequenceScroll(I)Z

    move-result v3

    if-eqz v3, :cond_107

    goto :goto_109

    :cond_107
    move v3, v1

    goto :goto_10a

    :cond_109
    :goto_109
    move v3, v4

    :goto_10a
    move v0, v3

    goto/16 :goto_1a2

    :sswitch_10d
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_1a2

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_124

    const/16 v3, 0x42

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v3

    if-eqz v3, :cond_122

    goto :goto_124

    :cond_122
    move v3, v1

    goto :goto_125

    :cond_124
    :goto_124
    move v3, v4

    :goto_125
    move v0, v3

    goto/16 :goto_1a2

    :sswitch_128
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_1a2

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_13f

    const/16 v3, 0x11

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v3

    if-eqz v3, :cond_13d

    goto :goto_13f

    :cond_13d
    move v3, v1

    goto :goto_140

    :cond_13f
    :goto_13f
    move v3, v4

    :goto_140
    move v0, v3

    goto/16 :goto_1a2

    :sswitch_143
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_15b

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_158

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v3

    if-eqz v3, :cond_156

    goto :goto_158

    :cond_156
    move v3, v1

    goto :goto_159

    :cond_158
    :goto_158
    move v3, v4

    :goto_159
    move v0, v3

    goto :goto_1a2

    :cond_15b
    invoke-virtual {p3, v6}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_1a2

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_170

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_16e

    goto :goto_170

    :cond_16e
    move v3, v1

    goto :goto_171

    :cond_170
    :goto_170
    move v3, v4

    :goto_171
    move v0, v3

    goto :goto_1a2

    :sswitch_173
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_18b

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_188

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v3

    if-eqz v3, :cond_186

    goto :goto_188

    :cond_186
    move v3, v1

    goto :goto_189

    :cond_188
    :goto_188
    move v3, v4

    :goto_189
    move v0, v3

    goto :goto_1a2

    :cond_18b
    invoke-virtual {p3, v6}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_1a2

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_1a0

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_19e

    goto :goto_1a0

    :cond_19e
    move v3, v1

    goto :goto_1a1

    :cond_1a0
    :goto_1a0
    move v3, v4

    :goto_1a1
    move v0, v3

    :cond_1a2
    :goto_1a2
    if-eqz v0, :cond_1a5

    return v4

    :cond_1a5
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/GridView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_1ac

    return v4

    :cond_1ac
    packed-switch v2, :pswitch_data_1e6

    return v1

    :pswitch_1b0  #0x2
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    :pswitch_1b5  #0x1
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    :pswitch_1ba  #0x0
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    nop

    :sswitch_data_1c0
    .sparse-switch
        0x13 -> :sswitch_173
        0x14 -> :sswitch_143
        0x15 -> :sswitch_128
        0x16 -> :sswitch_10d
        0x3d -> :sswitch_db
        0x5c -> :sswitch_a9
        0x5d -> :sswitch_77
        0x7a -> :sswitch_5e
        0x7b -> :sswitch_45
    .end sparse-switch

    :pswitch_data_1e6
    .packed-switch 0x0
        :pswitch_1ba  #00000000
        :pswitch_1b5  #00000001
        :pswitch_1b0  #00000002
    .end packed-switch
.end method

.method private correctTooHigh(III)V
    .registers 14

    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v0, p3

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_5f

    if-lez p3, :cond_5f

    add-int/lit8 v2, p3, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Landroid/widget/GridView;->mBottom:I

    iget v5, p0, Landroid/widget/GridView;->mTop:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    sub-int v5, v4, v3

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    if-lez v5, :cond_5f

    iget v8, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-gtz v8, :cond_37

    iget-object v8, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    if-ge v7, v8, :cond_5f

    :cond_37
    iget v8, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-nez v8, :cond_44

    iget-object v8, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v7

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    :cond_44
    invoke-virtual {p0, v5}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    iget v8, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-lez v8, :cond_5f

    iget v8, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget-boolean v9, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v9, :cond_52

    goto :goto_53

    :cond_52
    move v1, p1

    :goto_53
    sub-int/2addr v8, v1

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-direct {p0, v8, v1}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    :cond_5f
    return-void
.end method

.method private correctTooLow(III)V
    .registers 14

    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-nez v0, :cond_5d

    if-lez p3, :cond_5d

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Landroid/widget/GridView;->mBottom:I

    iget v4, p0, Landroid/widget/GridView;->mTop:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    sub-int v4, v1, v2

    add-int/lit8 v5, p3, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v7, p3

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    if-lez v4, :cond_5d

    iget v9, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v9, v8

    if-lt v7, v9, :cond_37

    if-le v6, v3, :cond_5d

    :cond_37
    iget v9, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v9, v8

    if-ne v7, v9, :cond_42

    sub-int v9, v6, v3

    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_42
    neg-int v9, v4

    invoke-virtual {p0, v9}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    iget v9, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v9, v8

    if-ge v7, v9, :cond_5d

    iget-boolean v9, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v9, :cond_50

    goto :goto_51

    :cond_50
    move v8, p1

    :goto_51
    add-int/2addr v8, v7

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v9

    add-int/2addr v9, p2

    invoke-direct {p0, v8, v9}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    :cond_5d
    return-void
.end method

.method private determineColumns(I)Z
    .registers 10

    iget v0, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    iget v1, p0, Landroid/widget/GridView;->mStretchMode:I

    iget v2, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    const/4 v3, 0x0

    iget v4, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1a

    if-lez v2, :cond_16

    add-int v4, p1, v0

    add-int v5, v2, v0

    div-int/2addr v4, v5

    iput v4, p0, Landroid/widget/GridView;->mNumColumns:I

    goto :goto_1c

    :cond_16
    const/4 v4, 0x2

    iput v4, p0, Landroid/widget/GridView;->mNumColumns:I

    goto :goto_1c

    :cond_1a
    iput v4, p0, Landroid/widget/GridView;->mNumColumns:I

    :goto_1c
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    const/4 v5, 0x1

    if-gtz v4, :cond_23

    iput v5, p0, Landroid/widget/GridView;->mNumColumns:I

    :cond_23
    packed-switch v1, :pswitch_data_66

    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    mul-int v6, v4, v2

    sub-int v6, p1, v6

    add-int/lit8 v7, v4, -0x1

    mul-int/2addr v7, v0

    sub-int/2addr v6, v7

    if-gez v6, :cond_39

    const/4 v3, 0x1

    goto :goto_39

    :pswitch_34  #0x0
    iput v2, p0, Landroid/widget/GridView;->mColumnWidth:I

    iput v0, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_65

    :cond_39
    :goto_39
    packed-switch v1, :pswitch_data_6c

    goto :goto_65

    :pswitch_3d  #0x3
    iput v2, p0, Landroid/widget/GridView;->mColumnWidth:I

    if-le v4, v5, :cond_48

    add-int/2addr v4, v5

    div-int v4, v6, v4

    add-int/2addr v4, v0

    iput v4, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_65

    :cond_48
    add-int v4, v0, v6

    iput v4, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_65

    :pswitch_4d  #0x2
    div-int v4, v6, v4

    add-int/2addr v4, v2

    iput v4, p0, Landroid/widget/GridView;->mColumnWidth:I

    iput v0, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_65

    :pswitch_55  #0x1
    iput v2, p0, Landroid/widget/GridView;->mColumnWidth:I

    if-le v4, v5, :cond_60

    sub-int/2addr v4, v5

    div-int v4, v6, v4

    add-int/2addr v4, v0

    iput v4, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_65

    :cond_60
    add-int v4, v0, v6

    iput v4, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    nop

    :goto_65
    return v3

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_34  #00000000
    .end packed-switch

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_55  #00000001
        :pswitch_4d  #00000002
        :pswitch_3d  #00000003
    .end packed-switch
.end method

.method private fillDown(II)Landroid/view/View;
    .registers 9

    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/GridView;->mBottom:I

    iget v2, p0, Landroid/widget/GridView;->mTop:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/GridView;->mGroupFlags:I

    const/16 v3, 0x22

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_12

    iget-object v2, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    :cond_12
    :goto_12
    const/4 v2, 0x1

    if-ge p2, v1, :cond_2e

    iget v3, p0, Landroid/widget/GridView;->mItemCount:I

    if-ge p1, v3, :cond_2e

    invoke-direct {p0, p1, p2, v2}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_20

    move-object v0, v2

    :cond_20
    iget-object v3, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int p2, v3, v4

    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/2addr p1, v3

    goto :goto_12

    :cond_2e
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v4, p0, Landroid/widget/GridView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v2

    invoke-virtual {p0, v3, v4}, Landroid/widget/GridView;->setVisibleRangeHint(II)V

    return-object v0
.end method

.method private fillFromBottom(II)Landroid/view/View;
    .registers 6

    iget v0, p0, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget v0, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v2, v0, v2

    sub-int v2, v0, v2

    sub-int/2addr v1, v2

    invoke-direct {p0, v1, p2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .registers 16

    invoke-virtual {p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v0

    iget v1, p0, Landroid/widget/GridView;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    iget v3, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    const/4 v4, -0x1

    iget-boolean v5, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v6, 0x1

    if-nez v5, :cond_15

    rem-int v5, v1, v2

    sub-int v5, v1, v5

    goto :goto_2b

    :cond_15
    iget v5, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v1

    iget v7, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v7, v6

    rem-int v8, v5, v2

    sub-int v8, v5, v8

    sub-int v4, v7, v8

    const/4 v7, 0x0

    sub-int v8, v4, v2

    add-int/2addr v8, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    move v5, v7

    :goto_2b
    invoke-direct {p0, p2, v0, v5}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result v7

    invoke-direct {p0, p3, v0, v2, v5}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result v8

    iget-boolean v9, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v9, :cond_39

    move v9, v4

    goto :goto_3a

    :cond_39
    move v9, v5

    :goto_3a
    invoke-direct {p0, v9, p1, v6}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v6

    iput v5, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget-object v9, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    invoke-direct {p0, v9, v7, v8}, Landroid/widget/GridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    invoke-direct {p0, v9, v7, v8}, Landroid/widget/GridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    iget-boolean v10, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v10, :cond_64

    sub-int v10, v5, v2

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v3

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    add-int v10, v5, v2

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v11, v3

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    goto :goto_7b

    :cond_64
    add-int v10, v4, v2

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v11, v3

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v3

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    :goto_7b
    return-object v6
.end method

.method private fillFromTop(I)Landroid/view/View;
    .registers 5

    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-gez v0, :cond_1d

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    :cond_1d
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSelection(II)Landroid/view/View;
    .registers 16

    invoke-virtual {p0}, Landroid/widget/GridView;->reconcileSelectedPosition()I

    move-result v0

    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    iget v2, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    const/4 v3, -0x1

    iget-boolean v4, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v5, 0x1

    if-nez v4, :cond_13

    rem-int v4, v0, v1

    sub-int v4, v0, v4

    goto :goto_29

    :cond_13
    iget v4, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v0

    iget v6, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v6, v5

    rem-int v7, v4, v1

    sub-int v7, v4, v7

    sub-int v3, v6, v7

    const/4 v6, 0x0

    sub-int v7, v3, v1

    add-int/2addr v7, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v4, v6

    :goto_29
    invoke-virtual {p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v6

    invoke-direct {p0, p1, v6, v4}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result v7

    iget-boolean v8, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v8, :cond_37

    move v8, v3

    goto :goto_38

    :cond_37
    move v8, v4

    :goto_38
    invoke-direct {p0, v8, v7, v5}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v5

    iput v4, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget-object v8, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    iget-boolean v9, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v9, :cond_5f

    add-int v9, v4, v1

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v10

    add-int/2addr v10, v2

    invoke-direct {p0, v9, v10}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    invoke-direct {p0, p2}, Landroid/widget/GridView;->pinToBottom(I)V

    sub-int v9, v4, v1

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int/2addr v10, v2

    invoke-direct {p0, v9, v10}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    goto :goto_86

    :cond_5f
    invoke-direct {p0, p2, v6, v1, v4}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result v9

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int v10, v9, v10

    invoke-virtual {p0, v10}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    add-int/lit8 v11, v4, -0x1

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v12

    sub-int/2addr v12, v2

    invoke-direct {p0, v11, v12}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    invoke-direct {p0, p1}, Landroid/widget/GridView;->pinToTop(I)V

    add-int v11, v3, v1

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v12

    add-int/2addr v12, v2

    invoke-direct {p0, v11, v12}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    :goto_86
    return-object v5
.end method

.method private fillSpecific(II)Landroid/view/View;
    .registers 12

    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    const/4 v1, -0x1

    iget-boolean v2, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v3, 0x1

    if-nez v2, :cond_d

    rem-int v2, p1, v0

    sub-int v2, p1, v2

    goto :goto_23

    :cond_d
    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, p1

    iget v4, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v4, v3

    rem-int v5, v2, v0

    sub-int v5, v2, v5

    sub-int v1, v4, v5

    const/4 v4, 0x0

    sub-int v5, v1, v0

    add-int/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v2, v4

    :goto_23
    iget-boolean v4, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v4, :cond_29

    move v4, v1

    goto :goto_2a

    :cond_29
    move v4, v2

    :goto_2a
    invoke-direct {p0, v4, p2, v3}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v3

    iput v2, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget-object v4, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    if-nez v4, :cond_36

    const/4 v5, 0x0

    return-object v5

    :cond_36
    iget v5, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    iget-boolean v6, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v6, :cond_5f

    sub-int v6, v2, v0

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-direct {p0, v6, v7}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    add-int v7, v2, v0

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v8

    add-int/2addr v8, v5

    invoke-direct {p0, v7, v8}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_5e

    invoke-direct {p0, v0, v5, v8}, Landroid/widget/GridView;->correctTooHigh(III)V

    :cond_5e
    goto :goto_81

    :cond_5f
    add-int v6, v1, v0

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int/2addr v7, v5

    invoke-direct {p0, v6, v7}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object v7

    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v8, v5

    invoke-direct {p0, v6, v8}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_81

    invoke-direct {p0, v0, v5, v8}, Landroid/widget/GridView;->correctTooLow(III)V

    :cond_81
    :goto_81
    if-eqz v3, :cond_84

    return-object v3

    :cond_84
    if-eqz v6, :cond_87

    return-object v6

    :cond_87
    return-object v7
.end method

.method private fillUp(II)Landroid/view/View;
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, Landroid/widget/GridView;->mGroupFlags:I

    const/16 v3, 0x22

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_d

    iget-object v2, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v2, Landroid/graphics/Rect;->top:I

    :cond_d
    :goto_d
    const/4 v2, 0x0

    if-le p2, v1, :cond_29

    if-ltz p1, :cond_29

    invoke-direct {p0, p1, p2, v2}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_19

    move-object v0, v2

    :cond_19
    iget-object v3, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    sub-int p2, v3, v4

    iput p1, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int/2addr p1, v3

    goto :goto_d

    :cond_29
    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v3, :cond_35

    add-int/lit8 v3, p1, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/widget/GridView;->mFirstPosition:I

    :cond_35
    iget v2, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v2, v3}, Landroid/widget/GridView;->setVisibleRangeHint(II)V

    return-object v0
.end method

.method private getBottomSelectionPixel(IIII)I
    .registers 8

    move v0, p1

    add-int v1, p4, p3

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_c

    sub-int/2addr v0, p2

    :cond_c
    return v0
.end method

.method private getTopSelectionPixel(III)I
    .registers 5

    move v0, p1

    if-lez p3, :cond_4

    add-int/2addr v0, p2

    :cond_4
    return v0
.end method

.method private isCandidateSelection(II)Z
    .registers 10

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    sub-int/2addr v1, p1

    iget-boolean v2, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1a

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v5, p1, v2

    sub-int v5, p1, v5

    add-int/2addr v2, v5

    sub-int/2addr v2, v4

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_2a

    :cond_1a
    add-int/lit8 v2, v0, -0x1

    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v6, v1, v5

    sub-int v6, v1, v6

    sub-int/2addr v2, v6

    sub-int v5, v2, v5

    add-int/2addr v5, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    :goto_2a
    sparse-switch p2, :sswitch_data_56

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :sswitch_35
    if-nez v5, :cond_38

    move v3, v4

    :cond_38
    return v3

    :sswitch_39
    if-ne p1, v5, :cond_3c

    move v3, v4

    :cond_3c
    return v3

    :sswitch_3d
    add-int/lit8 v6, v0, -0x1

    if-ne v2, v6, :cond_42

    move v3, v4

    :cond_42
    return v3

    :sswitch_43
    if-ne p1, v2, :cond_46

    move v3, v4

    :cond_46
    return v3

    :sswitch_47
    if-ne p1, v5, :cond_4c

    if-nez v5, :cond_4c

    move v3, v4

    :cond_4c
    return v3

    :sswitch_4d
    if-ne p1, v2, :cond_54

    add-int/lit8 v6, v0, -0x1

    if-ne v2, v6, :cond_54

    move v3, v4

    :cond_54
    return v3

    nop

    :sswitch_data_56
    .sparse-switch
        0x1 -> :sswitch_4d
        0x2 -> :sswitch_47
        0x11 -> :sswitch_43
        0x21 -> :sswitch_3d
        0x42 -> :sswitch_39
        0x82 -> :sswitch_35
    .end sparse-switch
.end method

.method private makeAndAddView(IIZIZI)Landroid/view/View;
    .registers 19

    move-object v9, p0

    move v10, p1

    iget-boolean v0, v9, Landroid/widget/GridView;->mDataChanged:Z

    if-nez v0, :cond_1e

    iget-object v0, v9, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_1e

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, v11

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/widget/GridView;->setupChild(Landroid/view/View;IIZIZZI)V

    return-object v11

    :cond_1e
    iget-object v0, v9, Landroid/widget/GridView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Landroid/widget/GridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v11

    iget-object v0, v9, Landroid/widget/GridView;->mIsScrap:[Z

    const/4 v1, 0x0

    aget-boolean v7, v0, v1

    move-object v0, p0

    move-object v1, v11

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/widget/GridView;->setupChild(Landroid/view/View;IIZIZZI)V

    return-object v11
.end method

.method private makeRow(IIZ)Landroid/view/View;
    .registers 27

    move-object/from16 v7, p0

    iget v8, v7, Landroid/widget/GridView;->mColumnWidth:I

    iget v9, v7, Landroid/widget/GridView;->mHorizontalSpacing:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->isLayoutRtl()Z

    move-result v10

    const/4 v0, 0x3

    const/4 v11, 0x0

    if-eqz v10, :cond_21

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getWidth()I

    move-result v1

    iget-object v2, v7, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v8

    iget v2, v7, Landroid/widget/GridView;->mStretchMode:I

    if-ne v2, v0, :cond_1e

    move v0, v9

    goto :goto_1f

    :cond_1e
    move v0, v11

    :goto_1f
    sub-int/2addr v1, v0

    goto :goto_2d

    :cond_21
    iget-object v1, v7, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, v7, Landroid/widget/GridView;->mStretchMode:I

    if-ne v2, v0, :cond_2b

    move v0, v9

    goto :goto_2c

    :cond_2b
    move v0, v11

    :goto_2c
    add-int/2addr v1, v0

    :goto_2d
    iget-boolean v0, v7, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v13, 0x1

    if-nez v0, :cond_40

    iget v0, v7, Landroid/widget/GridView;->mNumColumns:I

    add-int v0, p1, v0

    iget v2, v7, Landroid/widget/GridView;->mItemCount:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    move/from16 v14, p1

    move v15, v0

    goto :goto_63

    :cond_40
    add-int/lit8 v0, p1, 0x1

    iget v2, v7, Landroid/widget/GridView;->mNumColumns:I

    sub-int v2, p1, v2

    add-int/2addr v2, v13

    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v3, v0, v2

    iget v4, v7, Landroid/widget/GridView;->mNumColumns:I

    if-ge v3, v4, :cond_61

    sub-int v3, v0, v2

    sub-int/2addr v4, v3

    add-int v3, v8, v9

    mul-int/2addr v4, v3

    if-eqz v10, :cond_5b

    const/4 v3, -0x1

    goto :goto_5c

    :cond_5b
    move v3, v13

    :goto_5c
    mul-int/2addr v3, v4

    add-int/2addr v1, v3

    move v15, v0

    move v14, v2

    goto :goto_63

    :cond_61
    move v15, v0

    move v14, v2

    :goto_63
    const/4 v0, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->shouldShowSelector()Z

    move-result v16

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->touchModeDrawsInPressedState()Z

    move-result v17

    iget v5, v7, Landroid/widget/GridView;->mSelectedPosition:I

    const/4 v2, 0x0

    if-eqz v10, :cond_73

    const/4 v3, -0x1

    goto :goto_74

    :cond_73
    move v3, v13

    :goto_74
    move/from16 v18, v3

    move v3, v14

    move-object/from16 v19, v0

    move/from16 v20, v1

    move-object v4, v2

    :goto_7c
    if-ge v3, v15, :cond_ba

    if-ne v3, v5, :cond_82

    move v0, v13

    goto :goto_83

    :cond_82
    move v0, v11

    :goto_83
    move/from16 v21, v0

    if-eqz p3, :cond_89

    const/4 v6, -0x1

    goto :goto_8c

    :cond_89
    sub-int v0, v3, v14

    move v6, v0

    :goto_8c
    move-object/from16 v0, p0

    move v1, v3

    move/from16 v2, p2

    move v11, v3

    move/from16 v3, p3

    move-object v12, v4

    move/from16 v4, v20

    move/from16 v22, v5

    move/from16 v5, v21

    invoke-direct/range {v0 .. v6}, Landroid/widget/GridView;->makeAndAddView(IIZIZI)Landroid/view/View;

    move-result-object v4

    mul-int v0, v18, v8

    add-int v20, v20, v0

    add-int/lit8 v0, v15, -0x1

    if-ge v11, v0, :cond_ab

    mul-int v0, v18, v9

    add-int v20, v20, v0

    :cond_ab
    if-eqz v21, :cond_b4

    if-nez v16, :cond_b1

    if-eqz v17, :cond_b4

    :cond_b1
    move-object v0, v4

    move-object/from16 v19, v0

    :cond_b4
    add-int/lit8 v3, v11, 0x1

    move/from16 v5, v22

    const/4 v11, 0x0

    goto :goto_7c

    :cond_ba
    move v11, v3

    move-object v12, v4

    move/from16 v22, v5

    iput-object v12, v7, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    if-eqz v19, :cond_c4

    iput-object v12, v7, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    :cond_c4
    return-object v19
.end method

.method private moveSelection(III)Landroid/view/View;
    .registers 21

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v1

    iget v2, v0, Landroid/widget/GridView;->mSelectedPosition:I

    iget v3, v0, Landroid/widget/GridView;->mNumColumns:I

    iget v4, v0, Landroid/widget/GridView;->mVerticalSpacing:I

    const/4 v5, -0x1

    iget-boolean v6, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v6, :cond_1e

    sub-int v6, v2, p1

    sub-int v9, v2, p1

    rem-int/2addr v9, v3

    sub-int/2addr v6, v9

    rem-int v9, v2, v3

    sub-int v9, v2, v9

    goto :goto_47

    :cond_1e
    iget v6, v0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v6, v8

    sub-int/2addr v6, v2

    iget v9, v0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v9, v8

    rem-int v10, v6, v3

    sub-int v10, v6, v10

    sub-int v5, v9, v10

    sub-int v9, v5, v3

    add-int/2addr v9, v8

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget v10, v0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v10, v8

    sub-int v11, v2, p1

    sub-int/2addr v10, v11

    iget v6, v0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v6, v8

    rem-int v11, v10, v3

    sub-int v11, v10, v11

    sub-int/2addr v6, v11

    sub-int v11, v6, v3

    add-int/2addr v11, v8

    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v6

    :goto_47
    sub-int v10, v9, v6

    move/from16 v11, p2

    invoke-direct {v0, v11, v1, v9}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result v12

    move/from16 v13, p3

    invoke-direct {v0, v13, v1, v3, v9}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result v14

    iput v9, v0, Landroid/widget/GridView;->mFirstPosition:I

    if-lez v10, :cond_78

    iget-object v15, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    if-nez v15, :cond_5e

    goto :goto_62

    :cond_5e
    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v7

    :goto_62
    nop

    iget-boolean v15, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v15, :cond_69

    move v15, v5

    goto :goto_6a

    :cond_69
    move v15, v9

    :goto_6a
    move/from16 v16, v1

    add-int v1, v7, v4

    invoke-direct {v0, v15, v1, v8}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v1

    iget-object v8, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    invoke-direct {v0, v8, v12, v14}, Landroid/widget/GridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    goto :goto_b2

    :cond_78
    move/from16 v16, v1

    if-gez v10, :cond_9a

    iget-object v1, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    if-nez v1, :cond_82

    move v1, v7

    goto :goto_86

    :cond_82
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_86
    iget-boolean v8, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v8, :cond_8c

    move v8, v5

    goto :goto_8d

    :cond_8c
    move v8, v9

    :goto_8d
    sub-int v15, v1, v4

    invoke-direct {v0, v8, v15, v7}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v7

    iget-object v8, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    invoke-direct {v0, v8, v12, v14}, Landroid/widget/GridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    move-object v1, v7

    goto :goto_b2

    :cond_9a
    iget-object v1, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    if-nez v1, :cond_9f

    goto :goto_a3

    :cond_9f
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v7

    :goto_a3
    move v1, v7

    iget-boolean v7, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v7, :cond_aa

    move v7, v5

    goto :goto_ab

    :cond_aa
    move v7, v9

    :goto_ab
    invoke-direct {v0, v7, v1, v8}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v7

    iget-object v8, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    move-object v1, v7

    :goto_b2
    iget-boolean v7, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v7, :cond_ce

    sub-int v7, v9, v3

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v15

    sub-int/2addr v15, v4

    invoke-direct {v0, v7, v15}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    add-int v7, v9, v3

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v15

    add-int/2addr v15, v4

    invoke-direct {v0, v7, v15}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    goto :goto_e5

    :cond_ce
    add-int v7, v5, v3

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v15

    add-int/2addr v15, v4

    invoke-direct {v0, v7, v15}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    add-int/lit8 v7, v9, -0x1

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v15

    sub-int/2addr v15, v4

    invoke-direct {v0, v7, v15}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    :goto_e5
    return-object v1
.end method

.method private pinToBottom(I)V
    .registers 5

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    iget v1, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v1, v0

    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    if-ne v1, v2, :cond_1c

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int v2, p1, v1

    if-lez v2, :cond_1c

    invoke-virtual {p0, v2}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    :cond_1c
    return-void
.end method

.method private pinToTop(I)V
    .registers 4

    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-nez v0, :cond_14

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v1, p1, v0

    if-gez v1, :cond_14

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    :cond_14
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZI)V
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p8

    const-wide/16 v4, 0x8

    const-string/jumbo v6, "setupGridItem"

    invoke-static {v4, v5, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz p6, :cond_1c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->shouldShowSelector()Z

    move-result v8

    if-eqz v8, :cond_1c

    move v8, v6

    goto :goto_1d

    :cond_1c
    move v8, v7

    :goto_1d
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v9

    if-eq v8, v9, :cond_25

    move v9, v6

    goto :goto_26

    :cond_25
    move v9, v7

    :goto_26
    iget v10, v0, Landroid/widget/GridView;->mTouchMode:I

    if-lez v10, :cond_33

    const/4 v11, 0x3

    if-ge v10, v11, :cond_33

    iget v11, v0, Landroid/widget/GridView;->mMotionPosition:I

    if-ne v11, v2, :cond_33

    move v11, v6

    goto :goto_34

    :cond_33
    move v11, v7

    :goto_34
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v12

    if-eq v11, v12, :cond_3c

    move v12, v6

    goto :goto_3d

    :cond_3c
    move v12, v7

    :goto_3d
    if-eqz p7, :cond_4a

    if-nez v9, :cond_4a

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v13

    if-eqz v13, :cond_48

    goto :goto_4a

    :cond_48
    move v13, v7

    goto :goto_4b

    :cond_4a
    :goto_4a
    move v13, v6

    :goto_4b
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/AbsListView$LayoutParams;

    if-nez v14, :cond_5a

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    move-object v14, v15

    check-cast v14, Landroid/widget/AbsListView$LayoutParams;

    :cond_5a
    iget-object v15, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v15, v2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v15

    iput v15, v14, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    iget-object v15, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v15, v2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v15

    iput-boolean v15, v14, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    if-eqz v9, :cond_74

    invoke-virtual {v1, v8}, Landroid/view/View;->setSelected(Z)V

    if-eqz v8, :cond_74

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->requestFocus()Z

    :cond_74
    if-eqz v12, :cond_79

    invoke-virtual {v1, v11}, Landroid/view/View;->setPressed(Z)V

    :cond_79
    iget v15, v0, Landroid/widget/GridView;->mChoiceMode:I

    if-eqz v15, :cond_a9

    iget-object v15, v0, Landroid/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v15, :cond_a9

    instance-of v15, v1, Landroid/widget/Checkable;

    if-eqz v15, :cond_92

    move-object v15, v1

    check-cast v15, Landroid/widget/Checkable;

    iget-object v4, v0, Landroid/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    invoke-interface {v15, v4}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_a9

    :cond_92
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_a9

    iget-object v4, v0, Landroid/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setActivated(Z)V

    :cond_a9
    :goto_a9
    if-eqz p7, :cond_c2

    iget-boolean v4, v14, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    if-nez v4, :cond_c2

    invoke-virtual {v0, v1, v3, v14}, Landroid/widget/GridView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    if-eqz p7, :cond_be

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    iget v4, v4, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    if-eq v4, v2, :cond_c7

    :cond_be
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    goto :goto_c7

    :cond_c2
    iput-boolean v7, v14, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    invoke-virtual {v0, v1, v3, v14, v6}, Landroid/widget/GridView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    :cond_c7
    :goto_c7
    if-eqz v13, :cond_e6

    nop

    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v5, v14, Landroid/widget/AbsListView$LayoutParams;->height:I

    invoke-static {v4, v7, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v4

    iget v5, v0, Landroid/widget/GridView;->mColumnWidth:I

    const/high16 v15, 0x40000000  # 2.0f

    invoke-static {v5, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget v15, v14, Landroid/widget/AbsListView$LayoutParams;->width:I

    invoke-static {v5, v7, v15}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    invoke-virtual {v1, v5, v4}, Landroid/view/View;->measure(II)V

    goto :goto_e9

    :cond_e6
    invoke-virtual/range {p0 .. p1}, Landroid/widget/GridView;->cleanupLayoutState(Landroid/view/View;)V

    :goto_e9
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-eqz p4, :cond_f6

    move/from16 v7, p3

    goto :goto_f8

    :cond_f6
    sub-int v7, p3, v5

    :goto_f8
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getLayoutDirection()I

    move-result v15

    iget v6, v0, Landroid/widget/GridView;->mGravity:I

    invoke-static {v6, v15}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v6

    and-int/lit8 v16, v6, 0x7

    packed-switch v16, :pswitch_data_150

    :pswitch_107  #0x2, 0x4
    move/from16 v2, p5

    goto :goto_11b

    :pswitch_10a  #0x5
    iget v2, v0, Landroid/widget/GridView;->mColumnWidth:I

    add-int v2, p5, v2

    sub-int/2addr v2, v4

    goto :goto_11b

    :pswitch_110  #0x3
    move/from16 v2, p5

    goto :goto_11b

    :pswitch_113  #0x1
    iget v2, v0, Landroid/widget/GridView;->mColumnWidth:I

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    add-int v2, p5, v2

    nop

    :goto_11b
    if-eqz v13, :cond_127

    add-int v3, v2, v4

    move/from16 v16, v4

    add-int v4, v7, v5

    invoke-virtual {v1, v2, v7, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_13b

    :cond_127
    move/from16 v16, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v3, v2, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v3, v7, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    :goto_13b
    iget-boolean v3, v0, Landroid/widget/GridView;->mCachingStarted:Z

    if-eqz v3, :cond_149

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v3

    if-nez v3, :cond_149

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    :cond_149
    const-wide/16 v3, 0x8

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    nop

    :pswitch_data_150
    .packed-switch 0x1
        :pswitch_113  #00000001
        :pswitch_107  #00000002
        :pswitch_110  #00000003
        :pswitch_107  #00000004
        :pswitch_10a  #00000005
    .end packed-switch
.end method


# virtual methods
.method arrowScroll(I)Z
    .registers 12

    iget v0, p0, Landroid/widget/GridView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    const/4 v2, 0x0

    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v4, 0x0

    if-nez v3, :cond_1a

    div-int v3, v0, v1

    mul-int/2addr v3, v1

    add-int v5, v3, v1

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_30

    :cond_1a
    iget v3, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    iget v5, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    div-int v6, v3, v1

    mul-int/2addr v6, v1

    sub-int/2addr v5, v6

    sub-int v6, v5, v1

    add-int/lit8 v6, v6, 0x1

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v3, v6

    :goto_30
    const/4 v6, 0x6

    sparse-switch p1, :sswitch_data_a6

    goto :goto_5a

    :sswitch_35
    iget v7, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ge v5, v7, :cond_5a

    iput v6, p0, Landroid/widget/GridView;->mLayoutMode:I

    add-int v7, v0, v1

    iget v8, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->setSelectionInt(I)V

    const/4 v2, 0x1

    goto :goto_5a

    :sswitch_4c
    if-lez v3, :cond_5a

    iput v6, p0, Landroid/widget/GridView;->mLayoutMode:I

    sub-int v7, v0, v1

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->setSelectionInt(I)V

    const/4 v2, 0x1

    :cond_5a
    :goto_5a
    invoke-virtual {p0}, Landroid/widget/GridView;->isLayoutRtl()Z

    move-result v7

    const/16 v8, 0x42

    const/16 v9, 0x11

    if-le v0, v3, :cond_79

    if-ne p1, v9, :cond_68

    if-eqz v7, :cond_6c

    :cond_68
    if-ne p1, v8, :cond_79

    if-eqz v7, :cond_79

    :cond_6c
    iput v6, p0, Landroid/widget/GridView;->mLayoutMode:I

    add-int/lit8 v6, v0, -0x1

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/GridView;->setSelectionInt(I)V

    const/4 v2, 0x1

    goto :goto_93

    :cond_79
    if-ge v0, v5, :cond_93

    if-ne p1, v9, :cond_7f

    if-nez v7, :cond_83

    :cond_7f
    if-ne p1, v8, :cond_93

    if-nez v7, :cond_93

    :cond_83
    iput v6, p0, Landroid/widget/GridView;->mLayoutMode:I

    add-int/lit8 v4, v0, 0x1

    iget v6, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/GridView;->setSelectionInt(I)V

    const/4 v2, 0x1

    :cond_93
    :goto_93
    if-eqz v2, :cond_9f

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/GridView;->playSoundEffect(I)V

    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    :cond_9f
    if-eqz v2, :cond_a4

    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    :cond_a4
    return v2

    nop

    :sswitch_data_a6
    .sparse-switch
        0x21 -> :sswitch_4c
        0x82 -> :sswitch_35
    .end sparse-switch
.end method

.method protected attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .registers 9

    iget-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    check-cast v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    if-nez v0, :cond_e

    new-instance v1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    invoke-direct {v1}, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;-><init>()V

    move-object v0, v1

    iput-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    :cond_e
    iput p4, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->count:I

    iput p3, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->index:I

    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    iput v1, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v1, p4, v1

    iput v1, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    iget-boolean v1, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v1, :cond_2d

    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v1, p3, v1

    iput v1, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v1, p3, v1

    iput v1, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    goto :goto_44

    :cond_2d
    add-int/lit8 v1, p4, -0x1

    sub-int/2addr v1, p3

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/lit8 v3, v2, -0x1

    rem-int v2, v1, v2

    sub-int/2addr v3, v2

    iput v3, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    iget v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    :goto_44
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .registers 10

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_3d

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int v3, v0, v2

    add-int/lit8 v3, v3, -0x1

    div-int/2addr v3, v2

    mul-int/lit8 v4, v3, 0x64

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v6

    if-lez v6, :cond_22

    mul-int/lit8 v7, v5, 0x64

    div-int/2addr v7, v6

    add-int/2addr v4, v7

    :cond_22
    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v6

    if-lez v6, :cond_3c

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v8

    sub-int v8, v7, v8

    mul-int/lit8 v8, v8, 0x64

    div-int/2addr v8, v6

    sub-int/2addr v4, v8

    :cond_3c
    return v4

    :cond_3d
    return v1
.end method

.method protected computeVerticalScrollOffset()I
    .registers 12

    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    const/4 v1, 0x0

    if-ltz v0, :cond_4e

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4e

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lez v3, :cond_4e

    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    iget v5, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/2addr v5, v4

    add-int/lit8 v5, v5, -0x1

    div-int/2addr v5, v4

    invoke-virtual {p0}, Landroid/widget/GridView;->isStackFromBottom()Z

    move-result v6

    if-eqz v6, :cond_2d

    mul-int v6, v5, v4

    iget v7, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v6, v7

    goto :goto_2e

    :cond_2d
    move v6, v1

    :goto_2e
    nop

    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v7, v6

    div-int/2addr v7, v4

    mul-int/lit8 v8, v7, 0x64

    mul-int/lit8 v9, v2, 0x64

    div-int/2addr v9, v3

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/widget/GridView;->mScrollY:I

    int-to-float v9, v9

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    int-to-float v10, v5

    mul-float/2addr v9, v10

    const/high16 v10, 0x42c80000  # 100.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v8, v9

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1

    :cond_4e
    return v1
.end method

.method protected computeVerticalScrollRange()I
    .registers 6

    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v1, v0

    mul-int/lit8 v2, v1, 0x64

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Landroid/widget/GridView;->mScrollY:I

    if-eqz v3, :cond_27

    iget v3, p0, Landroid/widget/GridView;->mScrollY:I

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v1

    mul-float/2addr v3, v4

    const/high16 v4, 0x42c80000  # 100.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v2, v3

    :cond_27
    return v2
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v0

    const-string/jumbo v1, "numColumns"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    return-void
.end method

.method fillGap(Z)V
    .registers 9

    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    iget v1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    const/16 v3, 0x22

    if-eqz p1, :cond_3a

    const/4 v4, 0x0

    iget v5, p0, Landroid/widget/GridView;->mGroupFlags:I

    and-int/2addr v5, v3

    if-ne v5, v3, :cond_16

    invoke-virtual {p0}, Landroid/widget/GridView;->getListPaddingTop()I

    move-result v4

    :cond_16
    if-lez v2, :cond_24

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v1

    goto :goto_25

    :cond_24
    move v3, v4

    :goto_25
    iget v5, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v5, v2

    iget-boolean v6, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v6, :cond_2f

    add-int/lit8 v6, v0, -0x1

    add-int/2addr v5, v6

    :cond_2f
    invoke-direct {p0, v5, v3}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v6

    invoke-direct {p0, v0, v1, v6}, Landroid/widget/GridView;->correctTooHigh(III)V

    goto :goto_6a

    :cond_3a
    const/4 v4, 0x0

    iget v5, p0, Landroid/widget/GridView;->mGroupFlags:I

    and-int/2addr v5, v3

    if-ne v5, v3, :cond_44

    invoke-virtual {p0}, Landroid/widget/GridView;->getListPaddingBottom()I

    move-result v4

    :cond_44
    if-lez v2, :cond_51

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v1

    goto :goto_56

    :cond_51
    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v3

    sub-int/2addr v3, v4

    :goto_56
    iget v5, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget-boolean v6, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v6, :cond_5e

    sub-int/2addr v5, v0

    goto :goto_60

    :cond_5e
    add-int/lit8 v5, v5, -0x1

    :goto_60
    invoke-direct {p0, v5, v3}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v6

    invoke-direct {p0, v0, v1, v6}, Landroid/widget/GridView;->correctTooLow(III)V

    :goto_6a
    return-void
.end method

.method findMotionRow(I)I
    .registers 6

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_34

    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    iget-boolean v2, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v2, :cond_20

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v0, :cond_1f

    invoke-virtual {p0, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_1d

    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v3, v2

    return v3

    :cond_1d
    add-int/2addr v2, v1

    goto :goto_d

    :cond_1f
    goto :goto_34

    :cond_20
    add-int/lit8 v2, v0, -0x1

    :goto_22
    if-ltz v2, :cond_34

    invoke-virtual {p0, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_32

    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v3, v2

    return v3

    :cond_32
    sub-int/2addr v2, v1

    goto :goto_22

    :cond_34
    :goto_34
    const/4 v1, -0x1

    return v1
.end method

.method fullScroll(I)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/16 v2, 0x21

    if-ne p1, v2, :cond_11

    iput v1, p0, Landroid/widget/GridView;->mLayoutMode:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelectionInt(I)V

    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    const/4 v0, 0x1

    goto :goto_22

    :cond_11
    const/16 v2, 0x82

    if-ne p1, v2, :cond_22

    iput v1, p0, Landroid/widget/GridView;->mLayoutMode:I

    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelectionInt(I)V

    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    const/4 v0, 0x1

    :cond_22
    :goto_22
    if-eqz v0, :cond_27

    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    :cond_27
    return v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    const-class v0, Landroid/widget/GridView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .registers 2

    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .registers 2

    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getColumnWidth()I
    .registers 2

    iget v0, p0, Landroid/widget/GridView;->mColumnWidth:I

    return v0
.end method

.method public getGravity()I
    .registers 2

    iget v0, p0, Landroid/widget/GridView;->mGravity:I

    return v0
.end method

.method public getHorizontalSpacing()I
    .registers 2

    iget v0, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    return v0
.end method

.method public getNumColumns()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    return v0
.end method

.method public getRequestedColumnWidth()I
    .registers 2

    iget v0, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    return v0
.end method

.method public getRequestedHorizontalSpacing()I
    .registers 2

    iget v0, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    return v0
.end method

.method public getStretchMode()I
    .registers 2

    iget v0, p0, Landroid/widget/GridView;->mStretchMode:I

    return v0
.end method

.method public getVerticalSpacing()I
    .registers 2

    iget v0, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    return v0
.end method

.method protected layoutChildren()V
    .registers 26

    move-object/from16 v1, p0

    iget-boolean v2, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    const/4 v0, 0x1

    if-nez v2, :cond_9

    iput-boolean v0, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    :cond_9
    const/4 v3, 0x0

    :try_start_a
    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invalidate()V

    iget-object v4, v1, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_2ba

    if-nez v4, :cond_24

    :try_start_14
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->resetList()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_1f

    if-nez v2, :cond_1e

    iput-boolean v3, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    :cond_1e
    return-void

    :catchall_1f
    move-exception v0

    move/from16 v18, v2

    goto/16 :goto_2bd

    :cond_24
    :try_start_24
    iget-object v4, v1, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/widget/GridView;->mBottom:I

    iget v6, v1, Landroid/widget/GridView;->mTop:I

    sub-int/2addr v5, v6

    iget-object v6, v1, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, v1, Landroid/widget/GridView;->mLayoutMode:I

    packed-switch v11, :pswitch_data_2c4

    iget v11, v1, Landroid/widget/GridView;->mSelectedPosition:I
    :try_end_41
    .catchall {:try_start_24 .. :try_end_41} :catchall_2ba

    goto :goto_5d

    :pswitch_42  #0x6
    :try_start_42
    iget v11, v1, Landroid/widget/GridView;->mNextSelectedPosition:I

    if-ltz v11, :cond_6e

    iget v11, v1, Landroid/widget/GridView;->mNextSelectedPosition:I

    iget v12, v1, Landroid/widget/GridView;->mSelectedPosition:I

    sub-int v7, v11, v12

    goto :goto_6e

    :pswitch_4d  #0x2
    iget v11, v1, Landroid/widget/GridView;->mNextSelectedPosition:I

    iget v12, v1, Landroid/widget/GridView;->mFirstPosition:I

    sub-int/2addr v11, v12

    if-ltz v11, :cond_6e

    if-ge v11, v6, :cond_6e

    invoke-virtual {v1, v11}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v12
    :try_end_5a
    .catchall {:try_start_42 .. :try_end_5a} :catchall_1f

    move-object v10, v12

    goto :goto_6e

    :pswitch_5c  #0x1, 0x3, 0x4, 0x5
    goto :goto_6e

    :goto_5d
    :try_start_5d
    iget v12, v1, Landroid/widget/GridView;->mFirstPosition:I
    :try_end_5f
    .catchall {:try_start_5d .. :try_end_5f} :catchall_2ba

    sub-int/2addr v11, v12

    if-ltz v11, :cond_69

    if-ge v11, v6, :cond_69

    :try_start_64
    invoke-virtual {v1, v11}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v12
    :try_end_68
    .catchall {:try_start_64 .. :try_end_68} :catchall_1f

    move-object v8, v12

    :cond_69
    :try_start_69
    invoke-virtual {v1, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    move-object v9, v12

    :cond_6e
    :goto_6e
    iget-boolean v11, v1, Landroid/widget/GridView;->mDataChanged:Z
    :try_end_70
    .catchall {:try_start_69 .. :try_end_70} :catchall_2ba

    if-eqz v11, :cond_75

    :try_start_72
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->handleDataChanged()V
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_1f

    :cond_75
    :try_start_75
    iget v12, v1, Landroid/widget/GridView;->mItemCount:I
    :try_end_77
    .catchall {:try_start_75 .. :try_end_77} :catchall_2ba

    if-nez v12, :cond_84

    :try_start_79
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->resetList()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V
    :try_end_7f
    .catchall {:try_start_79 .. :try_end_7f} :catchall_1f

    if-nez v2, :cond_83

    iput-boolean v3, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    :cond_83
    return-void

    :cond_84
    :try_start_84
    iget v12, v1, Landroid/widget/GridView;->mNextSelectedPosition:I

    invoke-virtual {v1, v12}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v15
    :try_end_90
    .catchall {:try_start_84 .. :try_end_90} :catchall_2ba

    if-eqz v15, :cond_cd

    :try_start_92
    invoke-virtual {v15}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v16

    move-object/from16 v17, v16

    move-object/from16 v3, v17

    if-eqz v3, :cond_ca

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v17

    move-object/from16 v18, v17

    move-object/from16 v0, v18

    if-eqz v0, :cond_c7

    if-eqz v11, :cond_b8

    invoke-virtual {v0}, Landroid/view/View;->hasTransientState()Z

    move-result v18

    if-nez v18, :cond_b8

    move-object/from16 v18, v12

    iget-boolean v12, v1, Landroid/widget/GridView;->mAdapterHasStableIds:Z

    if-eqz v12, :cond_b5

    goto :goto_ba

    :cond_b5
    move-object/from16 v12, v18

    goto :goto_c0

    :cond_b8
    move-object/from16 v18, v12

    :goto_ba
    move-object v13, v3

    nop

    invoke-virtual {v15}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedVirtualView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v12

    :goto_c0
    invoke-virtual {v1, v0}, Landroid/widget/GridView;->getPositionForView(Landroid/view/View;)I

    move-result v18
    :try_end_c4
    .catchall {:try_start_92 .. :try_end_c4} :catchall_1f

    move/from16 v14, v18

    goto :goto_d1

    :cond_c7
    move-object/from16 v18, v12

    goto :goto_cf

    :cond_ca
    move-object/from16 v18, v12

    goto :goto_cf

    :cond_cd
    move-object/from16 v18, v12

    :goto_cf
    move-object/from16 v12, v18

    :goto_d1
    :try_start_d1
    iget v0, v1, Landroid/widget/GridView;->mFirstPosition:I

    iget-object v3, v1, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;
    :try_end_d5
    .catchall {:try_start_d1 .. :try_end_d5} :catchall_2ba

    if-eqz v11, :cond_f8

    const/16 v18, 0x0

    move/from16 v19, v11

    move/from16 v11, v18

    :goto_dd
    if-ge v11, v6, :cond_f3

    move/from16 v18, v2

    :try_start_e1
    invoke-virtual {v1, v11}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move/from16 v20, v14

    add-int v14, v0, v11

    invoke-virtual {v3, v2, v14}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    add-int/lit8 v11, v11, 0x1

    move/from16 v2, v18

    move/from16 v14, v20

    goto :goto_dd

    :cond_f3
    move/from16 v18, v2

    move/from16 v20, v14

    goto :goto_101

    :cond_f8
    move/from16 v18, v2

    move/from16 v19, v11

    move/from16 v20, v14

    invoke-virtual {v3, v6, v0}, Landroid/widget/AbsListView$RecycleBin;->fillActiveViews(II)V

    :goto_101
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->detachAllViewsFromParent()V

    invoke-virtual {v3}, Landroid/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    iget v2, v1, Landroid/widget/GridView;->mLayoutMode:I

    const/4 v11, -0x1

    packed-switch v2, :pswitch_data_2d4

    if-nez v6, :cond_18a

    iget-boolean v2, v1, Landroid/widget/GridView;->mStackFromBottom:Z

    goto :goto_157

    :pswitch_112  #0x6
    invoke-direct {v1, v7, v4, v5}, Landroid/widget/GridView;->moveSelection(III)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_1be

    :pswitch_118  #0x5
    iget v2, v1, Landroid/widget/GridView;->mSyncPosition:I

    iget v14, v1, Landroid/widget/GridView;->mSpecificTop:I

    invoke-direct {v1, v2, v14}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_1be

    :pswitch_122  #0x4
    iget v2, v1, Landroid/widget/GridView;->mSelectedPosition:I

    iget v14, v1, Landroid/widget/GridView;->mSpecificTop:I

    invoke-direct {v1, v2, v14}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_1be

    :pswitch_12c  #0x3
    iget v2, v1, Landroid/widget/GridView;->mItemCount:I

    const/4 v14, 0x1

    sub-int/2addr v2, v14

    invoke-direct {v1, v2, v5}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    goto/16 :goto_1be

    :pswitch_139  #0x2
    if-eqz v10, :cond_145

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-direct {v1, v2, v4, v5}, Landroid/widget/GridView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_1be

    :cond_145
    invoke-direct {v1, v4, v5}, Landroid/widget/GridView;->fillSelection(II)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_1be

    :pswitch_14b  #0x1
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/GridView;->mFirstPosition:I

    invoke-direct {v1, v4}, Landroid/widget/GridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    goto/16 :goto_1be

    :goto_157
    if-nez v2, :cond_16f

    iget-object v2, v1, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_166

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_164

    goto :goto_166

    :cond_164
    const/4 v2, 0x0

    goto :goto_167

    :cond_166
    :goto_166
    move v2, v11

    :goto_167
    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    invoke-direct {v1, v4}, Landroid/widget/GridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v2

    goto :goto_1be

    :cond_16f
    iget v2, v1, Landroid/widget/GridView;->mItemCount:I

    const/4 v14, 0x1

    sub-int/2addr v2, v14

    iget-object v14, v1, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v14, :cond_180

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v14

    if-eqz v14, :cond_17e

    goto :goto_180

    :cond_17e
    move v14, v2

    goto :goto_181

    :cond_180
    :goto_180
    move v14, v11

    :goto_181
    invoke-virtual {v1, v14}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    invoke-direct {v1, v2, v5}, Landroid/widget/GridView;->fillFromBottom(II)Landroid/view/View;

    move-result-object v14

    move-object v2, v14

    goto :goto_1be

    :cond_18a
    iget v2, v1, Landroid/widget/GridView;->mSelectedPosition:I

    if-ltz v2, :cond_1a3

    iget v2, v1, Landroid/widget/GridView;->mSelectedPosition:I

    iget v14, v1, Landroid/widget/GridView;->mItemCount:I

    if-ge v2, v14, :cond_1a3

    iget v2, v1, Landroid/widget/GridView;->mSelectedPosition:I

    if-nez v8, :cond_19a

    move v14, v4

    goto :goto_19e

    :cond_19a
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v14

    :goto_19e
    invoke-direct {v1, v2, v14}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v2

    goto :goto_1be

    :cond_1a3
    iget v2, v1, Landroid/widget/GridView;->mFirstPosition:I

    iget v14, v1, Landroid/widget/GridView;->mItemCount:I

    if-ge v2, v14, :cond_1b8

    iget v2, v1, Landroid/widget/GridView;->mFirstPosition:I

    if-nez v9, :cond_1af

    move v14, v4

    goto :goto_1b3

    :cond_1af
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v14

    :goto_1b3
    invoke-direct {v1, v2, v14}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v2

    goto :goto_1be

    :cond_1b8
    const/4 v2, 0x0

    invoke-direct {v1, v2, v4}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v14

    move-object v2, v14

    :goto_1be
    invoke-virtual {v3}, Landroid/widget/AbsListView$RecycleBin;->scrapActiveViews()V

    if-eqz v2, :cond_1cf

    invoke-virtual {v1, v11, v2}, Landroid/widget/GridView;->positionSelector(ILandroid/view/View;)V

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v14

    iput v14, v1, Landroid/widget/GridView;->mSelectedTop:I

    move/from16 v22, v0

    goto :goto_210

    :cond_1cf
    iget v14, v1, Landroid/widget/GridView;->mTouchMode:I

    if-lez v14, :cond_1da

    iget v14, v1, Landroid/widget/GridView;->mTouchMode:I

    const/4 v11, 0x3

    if-ge v14, v11, :cond_1da

    const/4 v11, 0x1

    goto :goto_1db

    :cond_1da
    const/4 v11, 0x0

    :goto_1db
    if-eqz v11, :cond_1f0

    iget v14, v1, Landroid/widget/GridView;->mMotionPosition:I

    move/from16 v22, v0

    iget v0, v1, Landroid/widget/GridView;->mFirstPosition:I

    sub-int/2addr v14, v0

    invoke-virtual {v1, v14}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1ef

    iget v14, v1, Landroid/widget/GridView;->mMotionPosition:I

    invoke-virtual {v1, v14, v0}, Landroid/widget/GridView;->positionSelector(ILandroid/view/View;)V

    :cond_1ef
    goto :goto_210

    :cond_1f0
    move/from16 v22, v0

    iget v0, v1, Landroid/widget/GridView;->mSelectedPosition:I

    const/4 v14, -0x1

    if-eq v0, v14, :cond_208

    iget v0, v1, Landroid/widget/GridView;->mSelectorPosition:I

    iget v14, v1, Landroid/widget/GridView;->mFirstPosition:I

    sub-int/2addr v0, v14

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_207

    iget v14, v1, Landroid/widget/GridView;->mSelectorPosition:I

    invoke-virtual {v1, v14, v0}, Landroid/widget/GridView;->positionSelector(ILandroid/view/View;)V

    :cond_207
    goto :goto_210

    :cond_208
    const/4 v14, 0x0

    iput v14, v1, Landroid/widget/GridView;->mSelectedTop:I

    iget-object v0, v1, Landroid/widget/GridView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    :goto_210
    const/4 v0, 0x0

    if-eqz v15, :cond_285

    invoke-virtual {v15}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v11

    if-nez v11, :cond_27c

    if-eqz v13, :cond_253

    invoke-virtual {v13}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v14

    if-eqz v14, :cond_24e

    nop

    invoke-virtual {v13}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v14

    if-eqz v12, :cond_242

    if-eqz v14, :cond_242

    nop

    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v17

    move/from16 v21, v17

    move-object/from16 v23, v2

    const/16 v2, 0x40

    move-object/from16 v24, v3

    move/from16 v3, v21

    invoke-virtual {v14, v3, v2, v0}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    nop

    goto :goto_249

    :cond_242
    move-object/from16 v23, v2

    move-object/from16 v24, v3

    invoke-virtual {v13}, Landroid/view/View;->requestAccessibilityFocus()Z

    :goto_249
    move/from16 v17, v4

    move/from16 v14, v20

    goto :goto_28d

    :cond_24e
    move-object/from16 v23, v2

    move-object/from16 v24, v3

    goto :goto_257

    :cond_253
    move-object/from16 v23, v2

    move-object/from16 v24, v3

    :goto_257
    move/from16 v14, v20

    const/4 v2, -0x1

    if-eq v14, v2, :cond_279

    iget v2, v1, Landroid/widget/GridView;->mFirstPosition:I

    sub-int v2, v14, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v3

    const/16 v17, 0x1

    add-int/lit8 v3, v3, -0x1

    move/from16 v17, v4

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Landroid/util/MathUtils;->constrain(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_28d

    invoke-virtual {v3}, Landroid/view/View;->requestAccessibilityFocus()Z

    goto :goto_28d

    :cond_279
    move/from16 v17, v4

    goto :goto_28d

    :cond_27c
    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move/from16 v17, v4

    move/from16 v14, v20

    goto :goto_28d

    :cond_285
    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move/from16 v17, v4

    move/from16 v14, v20

    :cond_28d
    :goto_28d
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/GridView;->mLayoutMode:I

    iput-boolean v2, v1, Landroid/widget/GridView;->mDataChanged:Z

    iget-object v2, v1, Landroid/widget/GridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    if-eqz v2, :cond_29d

    iget-object v2, v1, Landroid/widget/GridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->post(Ljava/lang/Runnable;)Z

    iput-object v0, v1, Landroid/widget/GridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    :cond_29d
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/widget/GridView;->mNeedSync:Z

    iget v0, v1, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->updateScrollIndicators()V

    iget v0, v1, Landroid/widget/GridView;->mItemCount:I

    if-lez v0, :cond_2af

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->checkSelectionChanged()V

    :cond_2af
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V
    :try_end_2b2
    .catchall {:try_start_e1 .. :try_end_2b2} :catchall_2b8

    if-nez v18, :cond_2b7

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    :cond_2b7
    return-void

    :catchall_2b8
    move-exception v0

    goto :goto_2bd

    :catchall_2ba
    move-exception v0

    move/from16 v18, v2

    :goto_2bd
    if-nez v18, :cond_2c2

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    :cond_2c2
    throw v0

    nop

    :pswitch_data_2c4
    .packed-switch 0x1
        :pswitch_5c  #00000001
        :pswitch_4d  #00000002
        :pswitch_5c  #00000003
        :pswitch_5c  #00000004
        :pswitch_5c  #00000005
        :pswitch_42  #00000006
    .end packed-switch

    :pswitch_data_2d4
    .packed-switch 0x1
        :pswitch_14b  #00000001
        :pswitch_139  #00000002
        :pswitch_12c  #00000003
        :pswitch_122  #00000004
        :pswitch_118  #00000005
        :pswitch_112  #00000006
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .registers 6

    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, -0x1

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_15

    :cond_c
    if-ltz p1, :cond_14

    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    if-lt p1, v2, :cond_13

    goto :goto_14

    :cond_13
    return p1

    :cond_14
    :goto_14
    return v1

    :cond_15
    :goto_15
    return v1
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 11

    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    const/4 v0, -0x1

    if-eqz p1, :cond_37

    if-eqz p3, :cond_37

    iget v1, p0, Landroid/widget/GridView;->mScrollX:I

    iget v2, p0, Landroid/widget/GridView;->mScrollY:I

    invoke-virtual {p3, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    iget-object v1, p0, Landroid/widget/GridView;->mTempRect:Landroid/graphics/Rect;

    const v2, 0x7fffffff

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_19
    if-ge v4, v3, :cond_37

    invoke-direct {p0, v4, p2}, Landroid/widget/GridView;->isCandidateSelection(II)Z

    move-result v5

    if-nez v5, :cond_22

    goto :goto_34

    :cond_22
    invoke-virtual {p0, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v5, v1}, Landroid/widget/GridView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-static {p3, v1, p2}, Landroid/widget/GridView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v6

    if-ge v6, v2, :cond_34

    move v2, v6

    move v0, v4

    :cond_34
    :goto_34
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_37
    if-ltz v0, :cond_40

    iget v1, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelection(I)V

    goto :goto_43

    :cond_40
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayout()V

    :goto_43
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 19

    move-object v0, p0

    move/from16 v1, p2

    invoke-super/range {p0 .. p3}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Landroid/widget/GridView;->getCount()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v3

    div-int v4, v2, v3

    iget-boolean v5, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v5, :cond_19

    rem-int v5, v1, v3

    div-int v6, v1, v3

    goto :goto_28

    :cond_19
    add-int/lit8 v5, v2, -0x1

    sub-int/2addr v5, v1

    add-int/lit8 v6, v3, -0x1

    rem-int v7, v5, v3

    sub-int/2addr v6, v7

    add-int/lit8 v7, v4, -0x1

    div-int v8, v5, v3

    sub-int/2addr v7, v8

    move v5, v6

    move v6, v7

    :goto_28
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/AbsListView$LayoutParams;

    if-eqz v7, :cond_37

    iget v8, v7, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    const/4 v9, -0x2

    if-ne v8, v9, :cond_37

    const/4 v8, 0x1

    goto :goto_38

    :cond_37
    const/4 v8, 0x0

    :goto_38
    move v12, v8

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->isItemChecked(I)Z

    move-result v14

    const/4 v9, 0x1

    const/4 v11, 0x1

    move v8, v6

    move v10, v5

    move v13, v14

    invoke-static/range {v8 .. v13}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v8

    move-object/from16 v9, p3

    invoke-virtual {v9, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 7

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/GridView;->getCount()I

    move-result v1

    div-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/widget/GridView;->getSelectionModeForAccessibility()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    if-gtz v0, :cond_1c

    if-lez v1, :cond_21

    :cond_1c
    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_TO_POSITION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_21
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .registers 19

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p2}, Landroid/widget/AbsListView;->onMeasure(II)V

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    if-nez v1, :cond_34

    iget v5, v0, Landroid/widget/GridView;->mColumnWidth:I

    if-lez v5, :cond_26

    iget-object v6, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iget-object v6, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    goto :goto_2f

    :cond_26
    iget-object v5, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    :goto_2f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getVerticalScrollbarWidth()I

    move-result v3

    add-int/2addr v3, v5

    :cond_34
    iget-object v5, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int v5, v3, v5

    iget-object v6, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    invoke-direct {v0, v5}, Landroid/widget/GridView;->determineColumns(I)Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v10, 0x0

    if-nez v9, :cond_4c

    move v9, v10

    goto :goto_52

    :cond_4c
    iget-object v9, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v9}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    :goto_52
    iput v9, v0, Landroid/widget/GridView;->mItemCount:I

    iget v9, v0, Landroid/widget/GridView;->mItemCount:I

    const/4 v12, 0x1

    if-lez v9, :cond_bf

    iget-object v13, v0, Landroid/widget/GridView;->mIsScrap:[Z

    invoke-virtual {v0, v10, v13}, Landroid/widget/GridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/AbsListView$LayoutParams;

    if-nez v14, :cond_71

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    move-object v14, v15

    check-cast v14, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {v13, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_71
    iget-object v15, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v15, v10}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v15

    iput v15, v14, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    iget-object v15, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v15, v10}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v15

    iput-boolean v15, v14, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    iput-boolean v12, v14, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    nop

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    invoke-static {v15, v10}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v15

    iget v12, v14, Landroid/widget/AbsListView$LayoutParams;->height:I

    invoke-static {v15, v10, v12}, Landroid/widget/GridView;->getChildMeasureSpec(III)I

    move-result v12

    iget v15, v0, Landroid/widget/GridView;->mColumnWidth:I

    const/high16 v11, 0x40000000  # 2.0f

    invoke-static {v15, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    iget v15, v14, Landroid/widget/AbsListView$LayoutParams;->width:I

    invoke-static {v11, v10, v15}, Landroid/widget/GridView;->getChildMeasureSpec(III)I

    move-result v10

    invoke-virtual {v13, v10, v12}, Landroid/view/View;->measure(II)V

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredState()I

    move-result v11

    invoke-static {v8, v11}, Landroid/widget/GridView;->combineMeasuredStates(II)I

    move-result v8

    iget-object v11, v0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget v15, v14, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v11, v15}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v11

    if-eqz v11, :cond_bf

    iget-object v11, v0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    const/4 v15, -0x1

    invoke-virtual {v11, v13, v15}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    :cond_bf
    if-nez v2, :cond_d3

    iget-object v10, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v11

    add-int/2addr v10, v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v11

    mul-int/lit8 v11, v11, 0x2

    add-int v4, v10, v11

    :cond_d3
    const/high16 v10, -0x80000000

    if-ne v2, v10, :cond_f4

    iget-object v11, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget-object v12, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v12

    iget v12, v0, Landroid/widget/GridView;->mNumColumns:I

    const/4 v13, 0x0

    :goto_e3
    if-ge v13, v9, :cond_f3

    add-int/2addr v11, v7

    add-int v14, v13, v12

    if-ge v14, v9, :cond_ed

    iget v14, v0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int/2addr v11, v14

    :cond_ed
    if-lt v11, v4, :cond_f1

    move v11, v4

    goto :goto_f3

    :cond_f1
    add-int/2addr v13, v12

    goto :goto_e3

    :cond_f3
    :goto_f3
    move v4, v11

    :cond_f4
    if-ne v1, v10, :cond_115

    iget v10, v0, Landroid/widget/GridView;->mRequestedNumColumns:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_115

    iget v11, v0, Landroid/widget/GridView;->mColumnWidth:I

    mul-int/2addr v11, v10

    const/4 v12, 0x1

    sub-int/2addr v10, v12

    iget v12, v0, Landroid/widget/GridView;->mHorizontalSpacing:I

    mul-int/2addr v10, v12

    add-int/2addr v11, v10

    iget-object v10, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v10

    iget-object v10, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v10

    if-gt v11, v3, :cond_112

    if-eqz v6, :cond_115

    :cond_112
    const/high16 v10, 0x1000000

    or-int/2addr v3, v10

    :cond_115
    invoke-virtual {v0, v3, v4}, Landroid/widget/GridView;->setMeasuredDimension(II)V

    move/from16 v10, p1

    iput v10, v0, Landroid/widget/GridView;->mWidthMeasureSpec:I

    return-void
.end method

.method pageScroll(I)Z
    .registers 8

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x21

    if-ne p1, v3, :cond_13

    iget v3, p0, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_25

    :cond_13
    const/16 v3, 0x82

    if-ne p1, v3, :cond_25

    iget v3, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v3, v1

    iget v4, p0, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_25
    :goto_25
    if-ltz v0, :cond_31

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setSelectionInt(I)V

    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    return v1

    :cond_31
    return v2
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .registers 8

    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    packed-switch p1, :pswitch_data_2a

    goto :goto_28

    :pswitch_c  #0x1020037
    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v0

    const/4 v2, -0x1

    const-string v3, "android.view.accessibility.action.ARGUMENT_ROW_INT"

    invoke-virtual {p2, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    mul-int v3, v2, v0

    invoke-virtual {p0}, Landroid/widget/GridView;->getCount()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ltz v2, :cond_28

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->smoothScrollToPosition(I)V

    return v1

    :cond_28
    :goto_28
    const/4 v0, 0x0

    return v0

    :pswitch_data_2a
    .packed-switch 0x1020037
        :pswitch_c  #01020037
    .end packed-switch
.end method

.method sequenceScroll(I)Z
    .registers 13

    iget v0, p0, Landroid/widget/GridView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_19

    div-int v3, v0, v1

    mul-int/2addr v3, v1

    add-int v6, v3, v1

    sub-int/2addr v6, v5

    add-int/lit8 v7, v2, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_2a

    :cond_19
    add-int/lit8 v3, v2, -0x1

    sub-int/2addr v3, v0

    add-int/lit8 v6, v2, -0x1

    div-int v7, v3, v1

    mul-int/2addr v7, v1

    sub-int/2addr v6, v7

    sub-int v7, v6, v1

    add-int/2addr v7, v5

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    move v3, v7

    :goto_2a
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    packed-switch p1, :pswitch_data_62

    goto :goto_50

    :pswitch_31  #0x2
    add-int/lit8 v10, v2, -0x1

    if-ge v0, v10, :cond_50

    iput v9, p0, Landroid/widget/GridView;->mLayoutMode:I

    add-int/lit8 v9, v0, 0x1

    invoke-virtual {p0, v9}, Landroid/widget/GridView;->setSelectionInt(I)V

    const/4 v7, 0x1

    if-ne v0, v6, :cond_40

    move v4, v5

    :cond_40
    move v8, v4

    goto :goto_50

    :pswitch_42  #0x1
    if-lez v0, :cond_50

    iput v9, p0, Landroid/widget/GridView;->mLayoutMode:I

    add-int/lit8 v9, v0, -0x1

    invoke-virtual {p0, v9}, Landroid/widget/GridView;->setSelectionInt(I)V

    const/4 v7, 0x1

    if-ne v0, v3, :cond_4f

    move v4, v5

    :cond_4f
    move v8, v4

    :cond_50
    :goto_50
    if-eqz v7, :cond_5c

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/GridView;->playSoundEffect(I)V

    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    :cond_5c
    if-eqz v8, :cond_61

    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    :cond_61
    return v7

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_42  #00000001
        :pswitch_31  #00000002
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 5

    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_f
    invoke-virtual {p0}, Landroid/widget/GridView;->resetList()V

    iget-object v0, p0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    iput-object p1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/GridView;->mOldSelectedPosition:I

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/widget/GridView;->mOldSelectedRowId:J

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_6d

    iget v0, p0, Landroid/widget/GridView;->mItemCount:I

    iput v0, p0, Landroid/widget/GridView;->mOldItemCount:I

    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/GridView;->mItemCount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/GridView;->mDataChanged:Z

    invoke-virtual {p0}, Landroid/widget/GridView;->checkFocus()V

    new-instance v1, Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    iget-object v1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v1, p0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget-object v2, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView$RecycleBin;->setViewTypeCount(I)V

    iget-boolean v1, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_5f

    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1, v2}, Landroid/widget/GridView;->lookForSelectablePosition(IZ)I

    move-result v0

    goto :goto_63

    :cond_5f
    invoke-virtual {p0, v2, v0}, Landroid/widget/GridView;->lookForSelectablePosition(IZ)I

    move-result v0

    :goto_63
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0}, Landroid/widget/GridView;->checkSelectionChanged()V

    goto :goto_73

    :cond_6d
    invoke-virtual {p0}, Landroid/widget/GridView;->checkFocus()V

    invoke-virtual {p0}, Landroid/widget/GridView;->checkSelectionChanged()V

    :goto_73
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayout()V

    return-void
.end method

.method public setColumnWidth(I)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget v0, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    if-eq p1, v0, :cond_9

    iput p1, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    :cond_9
    return-void
.end method

.method public setGravity(I)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget v0, p0, Landroid/widget/GridView;->mGravity:I

    if-eq v0, p1, :cond_9

    iput p1, p0, Landroid/widget/GridView;->mGravity:I

    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    :cond_9
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget v0, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    if-eq p1, v0, :cond_9

    iput p1, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    :cond_9
    return-void
.end method

.method public setNumColumns(I)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget v0, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    if-eq p1, v0, :cond_9

    iput p1, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    :cond_9
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setRemoteViewsAdapterAsync"
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    return-void
.end method

.method public setSelection(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    goto :goto_c

    :cond_a
    iput p1, p0, Landroid/widget/GridView;->mResurrectToPosition:I

    :goto_c
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/GridView;->mLayoutMode:I

    iget-object v0, p0, Landroid/widget/GridView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/widget/GridView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    :cond_18
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayout()V

    return-void
.end method

.method setSelectionInt(I)V
    .registers 7

    iget v0, p0, Landroid/widget/GridView;->mNextSelectedPosition:I

    iget-object v1, p0, Landroid/widget/GridView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v1, :cond_b

    iget-object v1, p0, Landroid/widget/GridView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    :cond_b
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0}, Landroid/widget/GridView;->layoutChildren()V

    iget-boolean v1, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v1, :cond_1d

    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroid/widget/GridView;->mNextSelectedPosition:I

    sub-int/2addr v1, v2

    goto :goto_1f

    :cond_1d
    iget v1, p0, Landroid/widget/GridView;->mNextSelectedPosition:I

    :goto_1f
    nop

    iget-boolean v2, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v2, :cond_2a

    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    goto :goto_2b

    :cond_2a
    move v2, v0

    :goto_2b
    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v4, v1, v3

    div-int v3, v2, v3

    if-eq v4, v3, :cond_36

    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    :cond_36
    return-void
.end method

.method public setStretchMode(I)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget v0, p0, Landroid/widget/GridView;->mStretchMode:I

    if-eq p1, v0, :cond_9

    iput p1, p0, Landroid/widget/GridView;->mStretchMode:I

    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    :cond_9
    return-void
.end method

.method public setVerticalSpacing(I)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget v0, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    if-eq p1, v0, :cond_9

    iput p1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    :cond_9
    return-void
.end method

.method public smoothScrollByOffset(I)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollByOffset(I)V

    return-void
.end method

.method public smoothScrollToPosition(I)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    return-void
.end method
