# classes4.dex

.class final Landroid/widget/Editor$CursorAnchorInfoNotifier;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/Editor$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CursorAnchorInfoNotifier"
.end annotation


# instance fields
.field final mSelectionInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

.field final mTmpIntOffset:[I

.field final mViewToScreenMatrix:Landroid/graphics/Matrix;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-direct {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;-><init>()V

    iput-object p1, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mSelectionInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mTmpIntOffset:[I

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mViewToScreenMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$CursorAnchorInfoNotifier-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/Editor$CursorAnchorInfoNotifier;-><init>(Landroid/widget/Editor;)V

    return-void
.end method


# virtual methods
.method public updatePosition(IIZZ)V
    .registers 33

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-eqz v1, :cond_1e6

    iget v2, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-lez v2, :cond_10

    move-object/from16 v19, v1

    goto/16 :goto_1e8

    :cond_10
    iget-object v2, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$mgetInputMethodManager(Landroid/widget/Editor;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    if-nez v2, :cond_19

    return-void

    :cond_19
    iget-object v3, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_26

    return-void

    :cond_26
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->isCursorAnchorInfoEnabled()Z

    move-result v3

    if-nez v3, :cond_2d

    return-void

    :cond_2d
    iget-object v3, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    if-nez v3, :cond_3a

    return-void

    :cond_3a
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->getUpdateCursorAnchorInfoMode()I

    move-result v4

    and-int/lit8 v5, v4, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_46

    move v5, v7

    goto :goto_47

    :cond_46
    move v5, v6

    :goto_47
    and-int/lit8 v8, v4, 0x8

    if-eqz v8, :cond_4d

    move v8, v7

    goto :goto_4e

    :cond_4d
    move v8, v6

    :goto_4e
    and-int/lit8 v9, v4, 0x10

    if-eqz v9, :cond_54

    move v9, v7

    goto :goto_55

    :cond_54
    move v9, v6

    :goto_55
    if-nez v5, :cond_5d

    if-nez v8, :cond_5d

    if-nez v9, :cond_5d

    move v10, v7

    goto :goto_5e

    :cond_5d
    move v10, v6

    :goto_5e
    or-int/2addr v5, v10

    or-int/2addr v8, v10

    or-int/2addr v9, v10

    iget-object v15, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mSelectionInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-virtual {v15}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->reset()V

    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v14

    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v11

    invoke-virtual {v15, v14, v11}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setSelectionRange(II)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mViewToScreenMatrix:Landroid/graphics/Matrix;

    iget-object v12, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v12}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    iget-object v12, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mTmpIntOffset:[I

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mViewToScreenMatrix:Landroid/graphics/Matrix;

    iget-object v12, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mTmpIntOffset:[I

    aget v13, v12, v6

    int-to-float v13, v13

    aget v12, v12, v7

    int-to-float v12, v12

    invoke-virtual {v11, v13, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mViewToScreenMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v15, v11}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setMatrix(Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    if-eqz v5, :cond_db

    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11}, Landroid/graphics/RectF;-><init>()V

    iget-object v12, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v12}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView;->getWidth()I

    move-result v12

    int-to-float v12, v12

    iget-object v13, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v13}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getHeight()I

    move-result v13

    int-to-float v13, v13

    const/4 v6, 0x0

    invoke-virtual {v11, v6, v6, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    new-instance v6, Landroid/view/inputmethod/EditorBoundsInfo$Builder;

    invoke-direct {v6}, Landroid/view/inputmethod/EditorBoundsInfo$Builder;-><init>()V

    nop

    invoke-virtual {v6, v11}, Landroid/view/inputmethod/EditorBoundsInfo$Builder;->setEditorBounds(Landroid/graphics/RectF;)Landroid/view/inputmethod/EditorBoundsInfo$Builder;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/inputmethod/EditorBoundsInfo$Builder;->build()Landroid/view/inputmethod/EditorBoundsInfo;

    move-result-object v12

    invoke-virtual {v15, v12}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setEditorBoundsInfo(Landroid/view/inputmethod/EditorBoundsInfo;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    :cond_db
    if-nez v8, :cond_e8

    if-eqz v9, :cond_e0

    goto :goto_e8

    :cond_e0
    move-object/from16 v19, v1

    move/from16 v23, v14

    move-object/from16 v24, v15

    goto/16 :goto_1d8

    :cond_e8
    :goto_e8
    iget-object v6, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v6

    int-to-float v6, v6

    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v11

    int-to-float v13, v11

    if-eqz v8, :cond_16a

    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    instance-of v11, v12, Landroid/text/Spannable;

    if-eqz v11, :cond_160

    move-object/from16 v17, v12

    check-cast v17, Landroid/text/Spannable;

    invoke-static/range {v17 .. v17}, Lcom/android/internal/inputmethod/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v11

    invoke-static/range {v17 .. v17}, Lcom/android/internal/inputmethod/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v7

    if-ge v7, v11, :cond_121

    move/from16 v19, v7

    move v7, v11

    move/from16 v11, v19

    :cond_121
    if-ltz v11, :cond_128

    if-ge v11, v7, :cond_128

    const/16 v16, 0x1

    goto :goto_12a

    :cond_128
    const/16 v16, 0x0

    :goto_12a
    move/from16 v18, v16

    if-eqz v18, :cond_154

    move-object/from16 v19, v1

    invoke-interface {v12, v11, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v15, v11, v1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setComposingText(ILjava/lang/CharSequence;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    move-object/from16 v20, v1

    iget-object v1, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    move/from16 v21, v11

    move-object v11, v1

    move-object v1, v12

    move-object v12, v15

    move/from16 v22, v13

    move/from16 v13, v21

    move/from16 v23, v14

    move v14, v7

    move-object/from16 v24, v15

    move v15, v6

    move/from16 v16, v22

    invoke-virtual/range {v11 .. v16}, Landroid/widget/TextView;->populateCharacterBounds(Landroid/view/inputmethod/CursorAnchorInfo$Builder;IIFF)V

    goto :goto_172

    :cond_154
    move-object/from16 v19, v1

    move/from16 v21, v11

    move-object v1, v12

    move/from16 v22, v13

    move/from16 v23, v14

    move-object/from16 v24, v15

    goto :goto_172

    :cond_160
    move-object/from16 v19, v1

    move-object v1, v12

    move/from16 v22, v13

    move/from16 v23, v14

    move-object/from16 v24, v15

    goto :goto_172

    :cond_16a
    move-object/from16 v19, v1

    move/from16 v22, v13

    move/from16 v23, v14

    move-object/from16 v24, v15

    :goto_172
    if-eqz v9, :cond_1d8

    if-ltz v23, :cond_1d8

    move/from16 v1, v23

    invoke-virtual {v3, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    invoke-virtual {v3, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v11

    add-float v15, v11, v6

    invoke-virtual {v3, v7}, Landroid/text/Layout;->getLineTop(I)I

    move-result v11

    int-to-float v11, v11

    add-float v14, v11, v22

    invoke-virtual {v3, v7}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v11

    int-to-float v11, v11

    add-float v17, v11, v22

    invoke-virtual {v3, v7}, Landroid/text/Layout;->getLineBottomWithoutSpacing(I)I

    move-result v11

    int-to-float v11, v11

    add-float v13, v11, v22

    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11, v15, v14}, Landroid/widget/TextView;->isPositionVisible(FF)Z

    move-result v18

    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11, v15, v13}, Landroid/widget/TextView;->isPositionVisible(FF)Z

    move-result v20

    const/4 v11, 0x0

    if-nez v18, :cond_1b0

    if-eqz v20, :cond_1b2

    :cond_1b0
    or-int/lit8 v11, v11, 0x1

    :cond_1b2
    if-eqz v18, :cond_1b6

    if-nez v20, :cond_1b8

    :cond_1b6
    or-int/lit8 v11, v11, 0x2

    :cond_1b8
    invoke-virtual {v3, v1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v12

    if-eqz v12, :cond_1c3

    or-int/lit8 v11, v11, 0x4

    move/from16 v21, v11

    goto :goto_1c5

    :cond_1c3
    move/from16 v21, v11

    :goto_1c5
    move-object/from16 v11, v24

    move v12, v15

    move/from16 v25, v13

    move v13, v14

    move/from16 v26, v14

    move/from16 v14, v17

    move/from16 v27, v15

    move/from16 v15, v25

    move/from16 v16, v21

    invoke-virtual/range {v11 .. v16}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setInsertionMarkerLocation(FFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    :cond_1d8
    :goto_1d8
    iget-object v1, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual/range {v24 .. v24}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->build()Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object v6

    invoke-virtual {v2, v1, v6}, Landroid/view/inputmethod/InputMethodManager;->updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V

    return-void

    :cond_1e6
    move-object/from16 v19, v1

    :goto_1e8
    return-void
.end method
