# classes3.dex

.class public Landroid/view/ScrollCaptureResponse$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ScrollCaptureResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBoundsInWindow:Landroid/graphics/Rect;

.field private mBuilderFieldsSet:J

.field private mConnection:Landroid/view/IScrollCaptureConnection;

.field private mDescription:Ljava/lang/String;

.field private mMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageName:Ljava/lang/String;

.field private mWindowBounds:Landroid/graphics/Rect;

.field private mWindowTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBuilderFieldsSet:J

    return-void
.end method

.method private checkNotUsed()V
    .registers 5

    iget-wide v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x80

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    return-void

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addMessage(Ljava/lang/String;)Landroid/view/ScrollCaptureResponse$Builder;
    .registers 3

    iget-object v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mMessages:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/ScrollCaptureResponse$Builder;->setMessages(Ljava/util/ArrayList;)Landroid/view/ScrollCaptureResponse$Builder;

    :cond_c
    iget-object v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Landroid/view/ScrollCaptureResponse;
    .registers 10

    invoke-direct {p0}, Landroid/view/ScrollCaptureResponse$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_17

    const-string v2, ""

    iput-object v2, p0, Landroid/view/ScrollCaptureResponse$Builder;->mDescription:Ljava/lang/String;

    :cond_17
    const-wide/16 v2, 0x2

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-nez v2, :cond_21

    iput-object v3, p0, Landroid/view/ScrollCaptureResponse$Builder;->mConnection:Landroid/view/IScrollCaptureConnection;

    :cond_21
    const-wide/16 v6, 0x4

    and-long/2addr v6, v0

    cmp-long v2, v6, v4

    if-nez v2, :cond_2a

    iput-object v3, p0, Landroid/view/ScrollCaptureResponse$Builder;->mWindowBounds:Landroid/graphics/Rect;

    :cond_2a
    const-wide/16 v6, 0x8

    and-long/2addr v6, v0

    cmp-long v2, v6, v4

    if-nez v2, :cond_33

    iput-object v3, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBoundsInWindow:Landroid/graphics/Rect;

    :cond_33
    const-wide/16 v6, 0x10

    and-long/2addr v6, v0

    cmp-long v2, v6, v4

    if-nez v2, :cond_3c

    iput-object v3, p0, Landroid/view/ScrollCaptureResponse$Builder;->mWindowTitle:Ljava/lang/String;

    :cond_3c
    const-wide/16 v6, 0x20

    and-long/2addr v6, v0

    cmp-long v2, v6, v4

    if-nez v2, :cond_45

    iput-object v3, p0, Landroid/view/ScrollCaptureResponse$Builder;->mPackageName:Ljava/lang/String;

    :cond_45
    const-wide/16 v2, 0x40

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_53

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mMessages:Ljava/util/ArrayList;

    :cond_53
    new-instance v0, Landroid/view/ScrollCaptureResponse;

    iget-object v2, p0, Landroid/view/ScrollCaptureResponse$Builder;->mDescription:Ljava/lang/String;

    iget-object v3, p0, Landroid/view/ScrollCaptureResponse$Builder;->mConnection:Landroid/view/IScrollCaptureConnection;

    iget-object v4, p0, Landroid/view/ScrollCaptureResponse$Builder;->mWindowBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBoundsInWindow:Landroid/graphics/Rect;

    iget-object v6, p0, Landroid/view/ScrollCaptureResponse$Builder;->mWindowTitle:Ljava/lang/String;

    iget-object v7, p0, Landroid/view/ScrollCaptureResponse$Builder;->mPackageName:Ljava/lang/String;

    iget-object v8, p0, Landroid/view/ScrollCaptureResponse$Builder;->mMessages:Ljava/util/ArrayList;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/view/ScrollCaptureResponse;-><init>(Ljava/lang/String;Landroid/view/IScrollCaptureConnection;Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public setBoundsInWindow(Landroid/graphics/Rect;)Landroid/view/ScrollCaptureResponse$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/view/ScrollCaptureResponse$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBoundsInWindow:Landroid/graphics/Rect;

    return-object p0
.end method

.method public setConnection(Landroid/view/IScrollCaptureConnection;)Landroid/view/ScrollCaptureResponse$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/view/ScrollCaptureResponse$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/view/ScrollCaptureResponse$Builder;->mConnection:Landroid/view/IScrollCaptureConnection;

    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Landroid/view/ScrollCaptureResponse$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/view/ScrollCaptureResponse$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/view/ScrollCaptureResponse$Builder;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method public setMessages(Ljava/util/ArrayList;)Landroid/view/ScrollCaptureResponse$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/view/ScrollCaptureResponse$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/view/ScrollCaptureResponse$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/view/ScrollCaptureResponse$Builder;->mMessages:Ljava/util/ArrayList;

    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Landroid/view/ScrollCaptureResponse$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/view/ScrollCaptureResponse$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/view/ScrollCaptureResponse$Builder;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public setWindowBounds(Landroid/graphics/Rect;)Landroid/view/ScrollCaptureResponse$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/view/ScrollCaptureResponse$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/view/ScrollCaptureResponse$Builder;->mWindowBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public setWindowTitle(Ljava/lang/String;)Landroid/view/ScrollCaptureResponse$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/view/ScrollCaptureResponse$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/view/ScrollCaptureResponse$Builder;->mWindowTitle:Ljava/lang/String;

    return-object p0
.end method
