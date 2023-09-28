# classes4.dex

.class final Landroid/widget/RemoteViews$NightModeReflectionAction;
.super Landroid/widget/RemoteViews$BaseReflectionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NightModeReflectionAction"
.end annotation


# instance fields
.field private final mDarkValue:Ljava/lang/Object;

.field private final mLightValue:Ljava/lang/Object;

.field final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 7

    iput-object p1, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->this$0:Landroid/widget/RemoteViews;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RemoteViews$BaseReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;I)V

    iput-object p5, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mLightValue:Ljava/lang/Object;

    iput-object p6, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mDarkValue:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .registers 5

    iput-object p1, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->this$0:Landroid/widget/RemoteViews;

    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews$BaseReflectionAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    iget p1, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->type:I

    sparse-switch p1, :sswitch_data_5e

    new-instance p1, Landroid/widget/RemoteViews$ActionException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected night mode action type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_25
    sget-object p1, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mLightValue:Ljava/lang/Object;

    sget-object p1, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mDarkValue:Ljava/lang/Object;

    goto :goto_5c

    :sswitch_36
    sget-object p1, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mLightValue:Ljava/lang/Object;

    sget-object p1, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mDarkValue:Ljava/lang/Object;

    goto :goto_5c

    :sswitch_47
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mLightValue:Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mDarkValue:Ljava/lang/Object;

    nop

    :goto_5c
    return-void

    nop

    :sswitch_data_5e
    .sparse-switch
        0x4 -> :sswitch_47
        0xf -> :sswitch_36
        0x10 -> :sswitch_25
    .end sparse-switch
.end method


# virtual methods
.method public getActionTag()I
    .registers 2

    const/16 v0, 0x1e

    return v0
.end method

.method protected getParameterValue(Landroid/view/View;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/widget/RemoteViews$ActionException;
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mDarkValue:Ljava/lang/Object;

    goto :goto_17

    :cond_15
    iget-object v1, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mLightValue:Ljava/lang/Object;

    :goto_17
    return-object v1
.end method

.method public visitUris(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->type:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mDarkValue:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Icon;

    invoke-static {v0, p1}, Landroid/widget/RemoteViews;->-$$Nest$smvisitIconUri(Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V

    iget-object v0, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mLightValue:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Icon;

    invoke-static {v0, p1}, Landroid/widget/RemoteViews;->-$$Nest$smvisitIconUri(Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V

    :cond_14
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/widget/RemoteViews$BaseReflectionAction;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->type:I

    sparse-switch v0, :sswitch_data_30

    goto :goto_2e

    :sswitch_9
    iget-object v0, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mLightValue:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mDarkValue:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_2e

    :sswitch_18
    iget-object v0, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mLightValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mDarkValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2e
    return-void

    nop

    :sswitch_data_30
    .sparse-switch
        0x4 -> :sswitch_18
        0xf -> :sswitch_9
        0x10 -> :sswitch_9
    .end sparse-switch
.end method
