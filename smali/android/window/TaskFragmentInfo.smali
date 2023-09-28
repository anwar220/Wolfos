# classes4.dex

.class public final Landroid/window/TaskFragmentInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TaskFragmentInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfiguration:Landroid/content/res/Configuration;

.field private final mFragmentToken:Landroid/os/IBinder;

.field private final mIsTaskClearedForReuse:Z

.field private final mIsTaskFragmentClearedForPip:Z

.field private final mIsVisible:Z

.field private final mMinimumDimensions:Landroid/graphics/Point;

.field private final mPositionInParent:Landroid/graphics/Point;

.field private final mRunningActivityCount:I

.field private final mToken:Landroid/window/WindowContainerToken;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/window/TaskFragmentInfo$1;

    invoke-direct {v0}, Landroid/window/TaskFragmentInfo$1;-><init>()V

    sput-object v0, Landroid/window/TaskFragmentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;Landroid/window/WindowContainerToken;Landroid/content/res/Configuration;IZLjava/util/List;Landroid/graphics/Point;ZZLandroid/graphics/Point;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Landroid/window/WindowContainerToken;",
            "Landroid/content/res/Configuration;",
            "IZ",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;",
            "Landroid/graphics/Point;",
            "ZZ",
            "Landroid/graphics/Point;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/window/TaskFragmentInfo;->mConfiguration:Landroid/content/res/Configuration;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/window/TaskFragmentInfo;->mActivities:Ljava/util/List;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Landroid/window/TaskFragmentInfo;->mPositionInParent:Landroid/graphics/Point;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iput-object v3, p0, Landroid/window/TaskFragmentInfo;->mMinimumDimensions:Landroid/graphics/Point;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    iput-object v4, p0, Landroid/window/TaskFragmentInfo;->mFragmentToken:Landroid/os/IBinder;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/WindowContainerToken;

    iput-object v4, p0, Landroid/window/TaskFragmentInfo;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, p3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    iput p4, p0, Landroid/window/TaskFragmentInfo;->mRunningActivityCount:I

    iput-boolean p5, p0, Landroid/window/TaskFragmentInfo;->mIsVisible:Z

    invoke-interface {v1, p6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2, p7}, Landroid/graphics/Point;->set(Landroid/graphics/Point;)V

    iput-boolean p8, p0, Landroid/window/TaskFragmentInfo;->mIsTaskClearedForReuse:Z

    iput-boolean p9, p0, Landroid/window/TaskFragmentInfo;->mIsTaskFragmentClearedForPip:Z

    invoke-virtual {v3, p10}, Landroid/graphics/Point;->set(Landroid/graphics/Point;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/window/TaskFragmentInfo;->mConfiguration:Landroid/content/res/Configuration;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/window/TaskFragmentInfo;->mActivities:Ljava/util/List;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Landroid/window/TaskFragmentInfo;->mPositionInParent:Landroid/graphics/Point;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iput-object v3, p0, Landroid/window/TaskFragmentInfo;->mMinimumDimensions:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    iput-object v4, p0, Landroid/window/TaskFragmentInfo;->mFragmentToken:Landroid/os/IBinder;

    sget-object v4, Landroid/window/WindowContainerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/WindowContainerToken;

    iput-object v4, p0, Landroid/window/TaskFragmentInfo;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TaskFragmentInfo;->mRunningActivityCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/TaskFragmentInfo;->mIsVisible:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBinderList(Ljava/util/List;)V

    invoke-virtual {v2, p1}, Landroid/graphics/Point;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/TaskFragmentInfo;->mIsTaskClearedForReuse:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/TaskFragmentInfo;->mIsTaskFragmentClearedForPip:Z

    invoke-virtual {v3, p1}, Landroid/graphics/Point;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/window/TaskFragmentInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/TaskFragmentInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equalsForTaskFragmentOrganizer(Landroid/window/TaskFragmentInfo;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Landroid/window/TaskFragmentInfo;->mFragmentToken:Landroid/os/IBinder;

    iget-object v2, p1, Landroid/window/TaskFragmentInfo;->mFragmentToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    iget-object v1, p0, Landroid/window/TaskFragmentInfo;->mToken:Landroid/window/WindowContainerToken;

    iget-object v2, p1, Landroid/window/TaskFragmentInfo;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v1, v2}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    iget v1, p0, Landroid/window/TaskFragmentInfo;->mRunningActivityCount:I

    iget v2, p1, Landroid/window/TaskFragmentInfo;->mRunningActivityCount:I

    if-ne v1, v2, :cond_5a

    iget-boolean v1, p0, Landroid/window/TaskFragmentInfo;->mIsVisible:Z

    iget-boolean v2, p1, Landroid/window/TaskFragmentInfo;->mIsVisible:Z

    if-ne v1, v2, :cond_5a

    invoke-virtual {p0}, Landroid/window/TaskFragmentInfo;->getWindowingMode()I

    move-result v1

    invoke-virtual {p1}, Landroid/window/TaskFragmentInfo;->getWindowingMode()I

    move-result v2

    if-ne v1, v2, :cond_5a

    iget-object v1, p0, Landroid/window/TaskFragmentInfo;->mActivities:Ljava/util/List;

    iget-object v2, p1, Landroid/window/TaskFragmentInfo;->mActivities:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    iget-object v1, p0, Landroid/window/TaskFragmentInfo;->mPositionInParent:Landroid/graphics/Point;

    iget-object v2, p1, Landroid/window/TaskFragmentInfo;->mPositionInParent:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    iget-boolean v1, p0, Landroid/window/TaskFragmentInfo;->mIsTaskClearedForReuse:Z

    iget-boolean v2, p1, Landroid/window/TaskFragmentInfo;->mIsTaskClearedForReuse:Z

    if-ne v1, v2, :cond_5a

    iget-boolean v1, p0, Landroid/window/TaskFragmentInfo;->mIsTaskFragmentClearedForPip:Z

    iget-boolean v2, p1, Landroid/window/TaskFragmentInfo;->mIsTaskFragmentClearedForPip:Z

    if-ne v1, v2, :cond_5a

    iget-object v1, p0, Landroid/window/TaskFragmentInfo;->mMinimumDimensions:Landroid/graphics/Point;

    iget-object v2, p1, Landroid/window/TaskFragmentInfo;->mMinimumDimensions:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    const/4 v0, 0x1

    goto :goto_5b

    :cond_5a
    nop

    :goto_5b
    return v0
.end method

.method public getActivities()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/window/TaskFragmentInfo;->mActivities:Ljava/util/List;

    return-object v0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .registers 2

    iget-object v0, p0, Landroid/window/TaskFragmentInfo;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public getFragmentToken()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/window/TaskFragmentInfo;->mFragmentToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public getMinimumHeight()I
    .registers 2

    iget-object v0, p0, Landroid/window/TaskFragmentInfo;->mMinimumDimensions:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    return v0
.end method

.method public getMinimumWidth()I
    .registers 2

    iget-object v0, p0, Landroid/window/TaskFragmentInfo;->mMinimumDimensions:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    return v0
.end method

.method public getPositionInParent()Landroid/graphics/Point;
    .registers 2

    iget-object v0, p0, Landroid/window/TaskFragmentInfo;->mPositionInParent:Landroid/graphics/Point;

    return-object v0
.end method

.method public getRunningActivityCount()I
    .registers 2

    iget v0, p0, Landroid/window/TaskFragmentInfo;->mRunningActivityCount:I

    return v0
.end method

.method public getToken()Landroid/window/WindowContainerToken;
    .registers 2

    iget-object v0, p0, Landroid/window/TaskFragmentInfo;->mToken:Landroid/window/WindowContainerToken;

    return-object v0
.end method

.method public getWindowingMode()I
    .registers 2

    iget-object v0, p0, Landroid/window/TaskFragmentInfo;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    return v0
.end method

.method public hasRunningActivity()Z
    .registers 2

    iget v0, p0, Landroid/window/TaskFragmentInfo;->mRunningActivityCount:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isEmpty()Z
    .registers 2

    iget v0, p0, Landroid/window/TaskFragmentInfo;->mRunningActivityCount:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isTaskClearedForReuse()Z
    .registers 2

    iget-boolean v0, p0, Landroid/window/TaskFragmentInfo;->mIsTaskClearedForReuse:Z

    return v0
.end method

.method public isTaskFragmentClearedForPip()Z
    .registers 2

    iget-boolean v0, p0, Landroid/window/TaskFragmentInfo;->mIsTaskFragmentClearedForPip:Z

    return v0
.end method

.method public isVisible()Z
    .registers 2

    iget-boolean v0, p0, Landroid/window/TaskFragmentInfo;->mIsVisible:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskFragmentInfo{ fragmentToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentInfo;->mFragmentToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentInfo;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " runningActivityCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TaskFragmentInfo;->mRunningActivityCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/TaskFragmentInfo;->mIsVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " activities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentInfo;->mActivities:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " positionInParent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentInfo;->mPositionInParent:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isTaskClearedForReuse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/TaskFragmentInfo;->mIsTaskClearedForReuse:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isTaskFragmentClearedForPip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/TaskFragmentInfo;->mIsTaskFragmentClearedForPip:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " minimumDimensions"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentInfo;->mMinimumDimensions:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/window/TaskFragmentInfo;->mFragmentToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v0, p0, Landroid/window/TaskFragmentInfo;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/window/TaskFragmentInfo;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/window/TaskFragmentInfo;->mRunningActivityCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/window/TaskFragmentInfo;->mIsVisible:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/window/TaskFragmentInfo;->mActivities:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/window/TaskFragmentInfo;->mPositionInParent:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    iget-boolean v0, p0, Landroid/window/TaskFragmentInfo;->mIsTaskClearedForReuse:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/window/TaskFragmentInfo;->mIsTaskFragmentClearedForPip:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/window/TaskFragmentInfo;->mMinimumDimensions:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
