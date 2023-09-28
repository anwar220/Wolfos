# classes3.dex

.class public Landroid/text/method/LinkMovementMethod;
.super Landroid/text/method/ScrollingMovementMethod;


# static fields
.field private static final CLICK:I = 0x1

.field private static final DOWN:I = 0x3

.field private static FROM_BELOW:Ljava/lang/Object; = null

.field private static final HIDE_FLOATING_TOOLBAR_DELAY_MS:I = 0xc8

.field private static final UP:I = 0x2

.field private static sInstance:Landroid/text/method/LinkMovementMethod;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/LinkMovementMethod;->FROM_BELOW:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    return-void
.end method

.method private action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 26

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getScrollY()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    add-int/2addr v5, v4

    sub-int/2addr v5, v3

    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v6

    invoke-virtual {v2, v5}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v7

    invoke-virtual {v2, v6}, Landroid/text/Layout;->getLineStart(I)I

    move-result v8

    invoke-virtual {v2, v7}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v9

    const-class v10, Landroid/text/style/ClickableSpan;

    invoke-interface {v1, v8, v9, v10}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/text/style/ClickableSpan;

    invoke-static/range {p3 .. p3}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v11

    invoke-static/range {p3 .. p3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v14

    if-gez v13, :cond_53

    sget-object v15, Landroid/text/method/LinkMovementMethod;->FROM_BELOW:Ljava/lang/Object;

    invoke-interface {v1, v15}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v15

    if-ltz v15, :cond_53

    invoke-interface/range {p3 .. p3}, Landroid/text/Spannable;->length()I

    move-result v15

    move v14, v15

    move v13, v15

    :cond_53
    const v15, 0x7fffffff

    if-le v13, v9, :cond_5a

    move v14, v15

    move v13, v15

    :cond_5a
    if-ge v14, v8, :cond_62

    const/16 v16, -0x1

    move/from16 v14, v16

    move/from16 v13, v16

    :cond_62
    const/16 v16, 0x0

    packed-switch p1, :pswitch_data_114

    move-object/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v17, v5

    goto/16 :goto_112

    :pswitch_71  #0x3
    const v18, 0x7fffffff

    const v19, 0x7fffffff

    const/16 v20, 0x0

    move/from16 v15, v18

    move-object/from16 v18, v2

    move/from16 v2, v19

    move/from16 v19, v3

    move/from16 v3, v20

    :goto_83
    move/from16 v20, v4

    array-length v4, v10

    if-ge v3, v4, :cond_a5

    aget-object v4, v10, v3

    invoke-interface {v1, v4}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    if-gt v4, v13, :cond_92

    if-ne v13, v14, :cond_a0

    :cond_92
    if-ge v4, v15, :cond_9e

    move v15, v4

    move/from16 v21, v4

    aget-object v4, v10, v3

    invoke-interface {v1, v4}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    goto :goto_a0

    :cond_9e
    move/from16 v21, v4

    :cond_a0
    :goto_a0
    add-int/lit8 v3, v3, 0x1

    move/from16 v4, v20

    goto :goto_83

    :cond_a5
    const v3, 0x7fffffff

    if-ge v2, v3, :cond_af

    invoke-static {v1, v15, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    const/4 v3, 0x1

    return v3

    :cond_af
    move/from16 v17, v5

    goto/16 :goto_112

    :pswitch_b3  #0x2
    move-object/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    :goto_bc
    array-length v15, v10

    if-ge v4, v15, :cond_e0

    aget-object v15, v10, v4

    invoke-interface {v1, v15}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v15

    if-lt v15, v14, :cond_cd

    if-ne v13, v14, :cond_ca

    goto :goto_cd

    :cond_ca
    move/from16 v17, v5

    goto :goto_db

    :cond_cd
    :goto_cd
    if-le v15, v3, :cond_d9

    move/from16 v17, v5

    aget-object v5, v10, v4

    invoke-interface {v1, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    move v3, v15

    goto :goto_db

    :cond_d9
    move/from16 v17, v5

    :goto_db
    add-int/lit8 v4, v4, 0x1

    move/from16 v5, v17

    goto :goto_bc

    :cond_e0
    move/from16 v17, v5

    if-ltz v2, :cond_112

    invoke-static {v1, v3, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    const/4 v4, 0x1

    return v4

    :pswitch_e9  #0x1
    move-object/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v17, v5

    if-ne v13, v14, :cond_f4

    return v16

    :cond_f4
    const-class v2, Landroid/text/style/ClickableSpan;

    invoke-interface {v1, v13, v14, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ClickableSpan;

    array-length v3, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_101

    return v16

    :cond_101
    aget-object v3, v2, v16

    instance-of v5, v3, Landroid/view/textclassifier/TextLinks$TextLinkSpan;

    if-eqz v5, :cond_10e

    move-object v5, v3

    check-cast v5, Landroid/view/textclassifier/TextLinks$TextLinkSpan;

    invoke-virtual {v5, v0, v4}, Landroid/view/textclassifier/TextLinks$TextLinkSpan;->onClick(Landroid/view/View;I)V

    goto :goto_112

    :cond_10e
    invoke-virtual {v3, v0}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    nop

    :cond_112
    :goto_112
    return v16

    nop

    :pswitch_data_114
    .packed-switch 0x1
        :pswitch_e9  #00000001
        :pswitch_b3  #00000002
        :pswitch_71  #00000003
    .end packed-switch
.end method

.method public static getInstance()Landroid/text/method/MovementMethod;
    .registers 1

    sget-object v0, Landroid/text/method/LinkMovementMethod;->sInstance:Landroid/text/method/LinkMovementMethod;

    if-nez v0, :cond_b

    new-instance v0, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    sput-object v0, Landroid/text/method/LinkMovementMethod;->sInstance:Landroid/text/method/LinkMovementMethod;

    :cond_b
    sget-object v0, Landroid/text/method/LinkMovementMethod;->sInstance:Landroid/text/method/LinkMovementMethod;

    return-object v0
.end method


# virtual methods
.method public canSelectArbitrarily()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected down(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Landroid/text/method/LinkMovementMethod;->action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    invoke-super {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->down(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method

.method protected handleMovementKey(Landroid/widget/TextView;Landroid/text/Spannable;IILandroid/view/KeyEvent;)Z
    .registers 8

    sparse-switch p3, :sswitch_data_24

    goto :goto_1e

    :sswitch_4
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p5}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p5}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Landroid/text/method/LinkMovementMethod;->action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v1

    if-eqz v1, :cond_1e

    return v0

    :cond_1e
    :goto_1e
    invoke-super/range {p0 .. p5}, Landroid/text/method/ScrollingMovementMethod;->handleMovementKey(Landroid/widget/TextView;Landroid/text/Spannable;IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    nop

    :sswitch_data_24
    .sparse-switch
        0x17 -> :sswitch_4
        0x42 -> :sswitch_4
    .end sparse-switch
.end method

.method public initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V
    .registers 4

    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    sget-object v0, Landroid/text/method/LinkMovementMethod;->FROM_BELOW:Ljava/lang/Object;

    invoke-interface {p2, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    return-void
.end method

.method protected left(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Landroid/text/method/LinkMovementMethod;->action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    invoke-super {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->left(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method

.method public onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V
    .registers 7

    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_10

    sget-object v0, Landroid/text/method/LinkMovementMethod;->FROM_BELOW:Ljava/lang/Object;

    const/16 v1, 0x22

    const/4 v2, 0x0

    invoke-interface {p2, v0, v2, v2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_15

    :cond_10
    sget-object v0, Landroid/text/method/LinkMovementMethod;->FROM_BELOW:Ljava/lang/Object;

    invoke-interface {p2, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :goto_15
    return-void
.end method

.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .registers 15

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    if-nez v0, :cond_78

    :cond_9
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v5

    int-to-float v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v6

    const-class v7, Landroid/text/style/ClickableSpan;

    invoke-interface {p2, v6, v6, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/ClickableSpan;

    array-length v8, v7

    if-eqz v8, :cond_75

    const/4 v8, 0x0

    aget-object v9, v7, v8

    if-ne v0, v1, :cond_53

    instance-of v10, v9, Landroid/view/textclassifier/TextLinks$TextLinkSpan;

    if-eqz v10, :cond_4f

    move-object v10, v9

    check-cast v10, Landroid/view/textclassifier/TextLinks$TextLinkSpan;

    invoke-virtual {v10, p1, v8}, Landroid/view/textclassifier/TextLinks$TextLinkSpan;->onClick(Landroid/view/View;I)V

    goto :goto_74

    :cond_4f
    invoke-virtual {v9, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    goto :goto_74

    :cond_53
    if-nez v0, :cond_74

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v10, 0x1c

    if-lt v8, v10, :cond_68

    const/16 v8, 0xc8

    invoke-virtual {p1, v8}, Landroid/widget/TextView;->hideFloatingToolbar(I)V

    :cond_68
    nop

    invoke-interface {p2, v9}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    invoke-interface {p2, v9}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    invoke-static {p2, v8, v10}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_74
    :goto_74
    return v1

    :cond_75
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    :cond_78
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/ScrollingMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method protected right(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Landroid/text/method/LinkMovementMethod;->action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    invoke-super {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->right(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method

.method protected up(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Landroid/text/method/LinkMovementMethod;->action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    invoke-super {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->up(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method
