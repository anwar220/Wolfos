# classes3.dex

.class public final synthetic Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/io/InputStream;

.field public final synthetic f$1:Landroid/os/OutcomeReceiver;

.field public final synthetic f$2:Landroid/os/ParcelFileDescriptor;

.field public final synthetic f$3:Ljava/io/OutputStream;


# direct methods
.method public synthetic constructor <init>(Ljava/io/InputStream;Landroid/os/OutcomeReceiver;Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda5;->f$0:Ljava/io/InputStream;

    iput-object p2, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda5;->f$1:Landroid/os/OutcomeReceiver;

    iput-object p3, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda5;->f$2:Landroid/os/ParcelFileDescriptor;

    iput-object p4, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda5;->f$3:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda5;->f$0:Ljava/io/InputStream;

    iget-object v1, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda5;->f$1:Landroid/os/OutcomeReceiver;

    iget-object v2, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda5;->f$2:Landroid/os/ParcelFileDescriptor;

    iget-object v3, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda5;->f$3:Ljava/io/OutputStream;

    invoke-static {v0, v1, v2, v3}, Landroid/telephony/TelephonyManager;->lambda$uploadCallComposerPicture$3(Ljava/io/InputStream;Landroid/os/OutcomeReceiver;Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V

    return-void
.end method
