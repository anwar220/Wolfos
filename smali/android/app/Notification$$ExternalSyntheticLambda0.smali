# classes.dex

.class public final synthetic Landroid/app/Notification$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/PendingIntent$OnMarshaledListener;


# instance fields
.field public final synthetic f$0:Landroid/app/Notification;

.field public final synthetic f$1:Landroid/os/Parcel;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Notification;Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/Notification$$ExternalSyntheticLambda0;->f$0:Landroid/app/Notification;

    iput-object p2, p0, Landroid/app/Notification$$ExternalSyntheticLambda0;->f$1:Landroid/os/Parcel;

    return-void
.end method


# virtual methods
.method public final onMarshaled(Landroid/app/PendingIntent;Landroid/os/Parcel;I)V
    .registers 6

    iget-object v0, p0, Landroid/app/Notification$$ExternalSyntheticLambda0;->f$0:Landroid/app/Notification;

    iget-object v1, p0, Landroid/app/Notification$$ExternalSyntheticLambda0;->f$1:Landroid/os/Parcel;

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/app/Notification;->lambda$writeToParcel$0$android-app-Notification(Landroid/os/Parcel;Landroid/app/PendingIntent;Landroid/os/Parcel;I)V

    return-void
.end method
