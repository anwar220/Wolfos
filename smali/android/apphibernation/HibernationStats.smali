# classes.dex

.class public final Landroid/apphibernation/HibernationStats;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/apphibernation/HibernationStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDiskBytesSaved:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/apphibernation/HibernationStats$1;

    invoke-direct {v0}, Landroid/apphibernation/HibernationStats$1;-><init>()V

    sput-object v0, Landroid/apphibernation/HibernationStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/apphibernation/HibernationStats;->mDiskBytesSaved:J

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/apphibernation/HibernationStats;->mDiskBytesSaved:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/apphibernation/HibernationStats-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/apphibernation/HibernationStats;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getDiskBytesSaved()J
    .registers 3

    iget-wide v0, p0, Landroid/apphibernation/HibernationStats;->mDiskBytesSaved:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-wide v0, p0, Landroid/apphibernation/HibernationStats;->mDiskBytesSaved:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
