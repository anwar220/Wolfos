# classes.dex

.class public Landroid/content/pm/LauncherActivityInfoInternal;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/LauncherActivityInfoInternal;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivityInfo:Landroid/content/pm/ActivityInfo;

.field private mComponentName:Landroid/content/ComponentName;

.field private mIncrementalStatesInfo:Landroid/content/pm/IncrementalStatesInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/content/pm/LauncherActivityInfoInternal$1;

    invoke-direct {v0}, Landroid/content/pm/LauncherActivityInfoInternal$1;-><init>()V

    sput-object v0, Landroid/content/pm/LauncherActivityInfoInternal;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ActivityInfo;Landroid/content/pm/IncrementalStatesInfo;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/LauncherActivityInfoInternal;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/pm/LauncherActivityInfoInternal;->mComponentName:Landroid/content/ComponentName;

    iput-object p2, p0, Landroid/content/pm/LauncherActivityInfoInternal;->mIncrementalStatesInfo:Landroid/content/pm/IncrementalStatesInfo;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Landroid/content/pm/LauncherActivityInfoInternal;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/content/pm/LauncherActivityInfoInternal;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/pm/LauncherActivityInfoInternal;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/pm/LauncherActivityInfoInternal;->mComponentName:Landroid/content/ComponentName;

    const-class v0, Landroid/content/pm/IncrementalStatesInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/content/pm/IncrementalStatesInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/IncrementalStatesInfo;

    iput-object v0, p0, Landroid/content/pm/LauncherActivityInfoInternal;->mIncrementalStatesInfo:Landroid/content/pm/IncrementalStatesInfo;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getActivityInfo()Landroid/content/pm/ActivityInfo;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/LauncherActivityInfoInternal;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/LauncherActivityInfoInternal;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getIncrementalStatesInfo()Landroid/content/pm/IncrementalStatesInfo;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/LauncherActivityInfoInternal;->mIncrementalStatesInfo:Landroid/content/pm/IncrementalStatesInfo;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Landroid/content/pm/LauncherActivityInfoInternal;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/content/pm/LauncherActivityInfoInternal;->mIncrementalStatesInfo:Landroid/content/pm/IncrementalStatesInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
