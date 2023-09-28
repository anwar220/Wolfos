# classes.dex

.class public Landroid/app/PictureInPictureParams$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PictureInPictureParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAspectRatio:Landroid/util/Rational;

.field private mAutoEnterEnabled:Ljava/lang/Boolean;

.field private mCloseAction:Landroid/app/RemoteAction;

.field private mExpandedAspectRatio:Landroid/util/Rational;

.field private mIsLaunchIntoPip:Ljava/lang/Boolean;

.field private mSeamlessResizeEnabled:Ljava/lang/Boolean;

.field private mSourceRectHint:Landroid/graphics/Rect;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;

.field private mUserActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/app/PictureInPictureParams;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/app/PictureInPictureParams;->-$$Nest$fgetmAspectRatio(Landroid/app/PictureInPictureParams;)Landroid/util/Rational;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PictureInPictureParams$Builder;->mAspectRatio:Landroid/util/Rational;

    invoke-static {p1}, Landroid/app/PictureInPictureParams;->-$$Nest$fgetmUserActions(Landroid/app/PictureInPictureParams;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PictureInPictureParams$Builder;->mUserActions:Ljava/util/List;

    invoke-static {p1}, Landroid/app/PictureInPictureParams;->-$$Nest$fgetmCloseAction(Landroid/app/PictureInPictureParams;)Landroid/app/RemoteAction;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PictureInPictureParams$Builder;->mCloseAction:Landroid/app/RemoteAction;

    invoke-static {p1}, Landroid/app/PictureInPictureParams;->-$$Nest$fgetmSourceRectHint(Landroid/app/PictureInPictureParams;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PictureInPictureParams$Builder;->mSourceRectHint:Landroid/graphics/Rect;

    invoke-static {p1}, Landroid/app/PictureInPictureParams;->-$$Nest$fgetmAutoEnterEnabled(Landroid/app/PictureInPictureParams;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PictureInPictureParams$Builder;->mAutoEnterEnabled:Ljava/lang/Boolean;

    invoke-static {p1}, Landroid/app/PictureInPictureParams;->-$$Nest$fgetmSeamlessResizeEnabled(Landroid/app/PictureInPictureParams;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PictureInPictureParams$Builder;->mSeamlessResizeEnabled:Ljava/lang/Boolean;

    invoke-static {p1}, Landroid/app/PictureInPictureParams;->-$$Nest$fgetmTitle(Landroid/app/PictureInPictureParams;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PictureInPictureParams$Builder;->mTitle:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/app/PictureInPictureParams;->-$$Nest$fgetmSubtitle(Landroid/app/PictureInPictureParams;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PictureInPictureParams$Builder;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/app/PictureInPictureParams;->-$$Nest$fgetmIsLaunchIntoPip(Landroid/app/PictureInPictureParams;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PictureInPictureParams$Builder;->mIsLaunchIntoPip:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public build()Landroid/app/PictureInPictureParams;
    .registers 13

    new-instance v11, Landroid/app/PictureInPictureParams;

    iget-object v1, p0, Landroid/app/PictureInPictureParams$Builder;->mAspectRatio:Landroid/util/Rational;

    iget-object v2, p0, Landroid/app/PictureInPictureParams$Builder;->mExpandedAspectRatio:Landroid/util/Rational;

    iget-object v3, p0, Landroid/app/PictureInPictureParams$Builder;->mUserActions:Ljava/util/List;

    iget-object v4, p0, Landroid/app/PictureInPictureParams$Builder;->mCloseAction:Landroid/app/RemoteAction;

    iget-object v5, p0, Landroid/app/PictureInPictureParams$Builder;->mSourceRectHint:Landroid/graphics/Rect;

    iget-object v6, p0, Landroid/app/PictureInPictureParams$Builder;->mAutoEnterEnabled:Ljava/lang/Boolean;

    iget-object v7, p0, Landroid/app/PictureInPictureParams$Builder;->mSeamlessResizeEnabled:Ljava/lang/Boolean;

    iget-object v8, p0, Landroid/app/PictureInPictureParams$Builder;->mTitle:Ljava/lang/CharSequence;

    iget-object v9, p0, Landroid/app/PictureInPictureParams$Builder;->mSubtitle:Ljava/lang/CharSequence;

    iget-object v10, p0, Landroid/app/PictureInPictureParams$Builder;->mIsLaunchIntoPip:Ljava/lang/Boolean;

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Landroid/app/PictureInPictureParams;-><init>(Landroid/util/Rational;Landroid/util/Rational;Ljava/util/List;Landroid/app/RemoteAction;Landroid/graphics/Rect;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public setActions(Ljava/util/List;)Landroid/app/PictureInPictureParams$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;)",
            "Landroid/app/PictureInPictureParams$Builder;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/PictureInPictureParams$Builder;->mUserActions:Ljava/util/List;

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/PictureInPictureParams$Builder;->mUserActions:Ljava/util/List;

    :cond_7
    if-eqz p1, :cond_10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/app/PictureInPictureParams$Builder;->mUserActions:Ljava/util/List;

    :cond_10
    return-object p0
.end method

.method public setAspectRatio(Landroid/util/Rational;)Landroid/app/PictureInPictureParams$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/PictureInPictureParams$Builder;->mAspectRatio:Landroid/util/Rational;

    return-object p0
.end method

.method public setAutoEnterEnabled(Z)Landroid/app/PictureInPictureParams$Builder;
    .registers 3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PictureInPictureParams$Builder;->mAutoEnterEnabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setCloseAction(Landroid/app/RemoteAction;)Landroid/app/PictureInPictureParams$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/PictureInPictureParams$Builder;->mCloseAction:Landroid/app/RemoteAction;

    return-object p0
.end method

.method public setExpandedAspectRatio(Landroid/util/Rational;)Landroid/app/PictureInPictureParams$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/PictureInPictureParams$Builder;->mExpandedAspectRatio:Landroid/util/Rational;

    return-object p0
.end method

.method setIsLaunchIntoPip(Z)Landroid/app/PictureInPictureParams$Builder;
    .registers 3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PictureInPictureParams$Builder;->mIsLaunchIntoPip:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setSeamlessResizeEnabled(Z)Landroid/app/PictureInPictureParams$Builder;
    .registers 3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PictureInPictureParams$Builder;->mSeamlessResizeEnabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setSourceRectHint(Landroid/graphics/Rect;)Landroid/app/PictureInPictureParams$Builder;
    .registers 3

    if-nez p1, :cond_6

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/PictureInPictureParams$Builder;->mSourceRectHint:Landroid/graphics/Rect;

    goto :goto_d

    :cond_6
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/app/PictureInPictureParams$Builder;->mSourceRectHint:Landroid/graphics/Rect;

    :goto_d
    return-object p0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)Landroid/app/PictureInPictureParams$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/PictureInPictureParams$Builder;->mSubtitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/app/PictureInPictureParams$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/PictureInPictureParams$Builder;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method
