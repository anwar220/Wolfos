# classes.dex

.class public final synthetic Landroid/content/pm/ApplicationInfo$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcel$SquashReadHelper;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final readRawParceled(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Landroid/content/pm/ApplicationInfo$1;->lambda$createFromParcel$0(Landroid/os/Parcel;)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    return-object p1
.end method
