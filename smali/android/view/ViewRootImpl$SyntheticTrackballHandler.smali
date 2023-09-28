# classes3.dex

.class final Landroid/view/ViewRootImpl$SyntheticTrackballHandler;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SyntheticTrackballHandler"
.end annotation


# instance fields
.field private mLastTime:J

.field private final mX:Landroid/view/ViewRootImpl$TrackballAxis;

.field private final mY:Landroid/view/ViewRootImpl$TrackballAxis;

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .registers 3

    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-direct {v0}, Landroid/view/ViewRootImpl$TrackballAxis;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    new-instance v0, Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-direct {v0}, Landroid/view/ViewRootImpl$TrackballAxis;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    const-wide/32 v0, -0x80000000

    iput-wide v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mLastTime:J

    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    :cond_17
    return-void
.end method

.method public process(Landroid/view/MotionEvent;)V
    .registers 32

    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    iget-wide v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mLastTime:J

    const-wide/16 v3, 0xfa

    add-long/2addr v1, v3

    cmp-long v1, v1, v14

    if-gez v1, :cond_1c

    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    iput-wide v14, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mLastTime:J

    :cond_1c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v17

    const/4 v13, 0x2

    packed-switch v16, :pswitch_data_1a8

    move-wide/from16 v18, v14

    goto/16 :goto_8e

    :pswitch_2c  #0x1
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v1, v13}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v1, v13}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    iget-object v12, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v11, Landroid/view/KeyEvent;

    const/4 v6, 0x1

    const/16 v7, 0x17

    const/4 v8, 0x0

    const/4 v10, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x400

    const/16 v20, 0x101

    move-object v1, v11

    move-wide v2, v14

    move-wide v4, v14

    move/from16 v9, v17

    move-object/from16 v21, v11

    move/from16 v11, v18

    move-object/from16 v22, v12

    move/from16 v12, v19

    move-wide/from16 v18, v14

    move v14, v13

    move/from16 v13, v20

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v2, v21

    move-object/from16 v1, v22

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    goto :goto_8e

    :pswitch_62  #0x0
    move-wide/from16 v18, v14

    move v14, v13

    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v1, v14}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v1, v14}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    iget-object v15, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v13, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/16 v7, 0x17

    const/4 v8, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v12, 0x400

    const/16 v20, 0x101

    move-object v1, v13

    move-wide/from16 v2, v18

    move-wide/from16 v4, v18

    move/from16 v9, v17

    move-object v14, v13

    move/from16 v13, v20

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual {v15, v14}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    nop

    :goto_8e
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    const-string v5, "X"

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/ViewRootImpl$TrackballAxis;->collect(FJLjava/lang/String;)F

    move-result v14

    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    const-string v5, "Y"

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/ViewRootImpl$TrackballAxis;->collect(FJLjava/lang/String;)F

    move-result v15

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000  # 1.0f

    cmpl-float v4, v14, v15

    if-lez v4, :cond_da

    iget-object v4, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v4}, Landroid/view/ViewRootImpl$TrackballAxis;->generate()I

    move-result v2

    if-eqz v2, :cond_d5

    if-lez v2, :cond_c3

    const/16 v4, 0x16

    goto :goto_c5

    :cond_c3
    const/16 v4, 0x15

    :goto_c5
    move v1, v4

    iget-object v4, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    iget v3, v4, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    iget-object v4, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    move/from16 v20, v1

    move/from16 v21, v3

    goto :goto_107

    :cond_d5
    move/from16 v20, v1

    move/from16 v21, v3

    goto :goto_107

    :cond_da
    const/4 v4, 0x0

    cmpl-float v4, v15, v4

    if-lez v4, :cond_103

    iget-object v4, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v4}, Landroid/view/ViewRootImpl$TrackballAxis;->generate()I

    move-result v2

    if-eqz v2, :cond_fe

    if-lez v2, :cond_ec

    const/16 v4, 0x14

    goto :goto_ee

    :cond_ec
    const/16 v4, 0x13

    :goto_ee
    move v1, v4

    iget-object v4, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    iget v3, v4, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    iget-object v4, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    move/from16 v20, v1

    move/from16 v21, v3

    goto :goto_107

    :cond_fe
    move/from16 v20, v1

    move/from16 v21, v3

    goto :goto_107

    :cond_103
    move/from16 v20, v1

    move/from16 v21, v3

    :goto_107
    if-eqz v20, :cond_1a0

    if-gez v2, :cond_10c

    neg-int v2, v2

    :cond_10c
    int-to-float v1, v2

    mul-float v1, v1, v21

    float-to-int v13, v1

    if-le v13, v2, :cond_148

    add-int/lit8 v22, v2, -0x1

    sub-int v23, v13, v22

    iget-object v12, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v11, Landroid/view/KeyEvent;

    const/4 v6, 0x2

    const/4 v10, -0x1

    const/16 v24, 0x0

    const/16 v25, 0x400

    const/16 v26, 0x101

    move-object v1, v11

    move-wide/from16 v2, v18

    move-wide/from16 v4, v18

    move/from16 v7, v20

    move/from16 v8, v23

    move/from16 v9, v17

    move-object/from16 v27, v11

    move/from16 v11, v24

    move-object/from16 v28, v12

    move/from16 v12, v25

    move/from16 v24, v13

    move/from16 v13, v26

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v2, v27

    move-object/from16 v1, v28

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    move-wide/from16 v3, v18

    move/from16 v2, v22

    goto :goto_14c

    :cond_148
    move/from16 v24, v13

    move-wide/from16 v3, v18

    :goto_14c
    if-lez v2, :cond_198

    add-int/lit8 v18, v2, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    iget-object v13, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v12, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v19, 0x400

    const/16 v25, 0x101

    move-object v1, v12

    move-wide/from16 v2, v22

    move-wide/from16 v4, v22

    move/from16 v7, v20

    move/from16 v9, v17

    move-object/from16 v29, v12

    move/from16 v12, v19

    move/from16 v26, v14

    move-object v14, v13

    move/from16 v13, v25

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v1, v29

    invoke-virtual {v14, v1}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    iget-object v14, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v13, Landroid/view/KeyEvent;

    const/4 v6, 0x1

    const/16 v12, 0x400

    const/16 v19, 0x101

    move-object v1, v13

    move/from16 v25, v15

    move-object v15, v13

    move/from16 v13, v19

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual {v14, v15}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    move/from16 v2, v18

    move-wide/from16 v3, v22

    move/from16 v15, v25

    move/from16 v14, v26

    goto :goto_14c

    :cond_198
    move/from16 v26, v14

    move/from16 v25, v15

    iput-wide v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mLastTime:J

    move-wide v14, v3

    goto :goto_1a6

    :cond_1a0
    move/from16 v26, v14

    move/from16 v25, v15

    move-wide/from16 v14, v18

    :goto_1a6
    return-void

    nop

    :pswitch_data_1a8
    .packed-switch 0x0
        :pswitch_62  #00000000
        :pswitch_2c  #00000001
    .end packed-switch
.end method
