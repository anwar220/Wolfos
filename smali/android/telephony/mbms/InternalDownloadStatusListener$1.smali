# classes3.dex

.class Landroid/telephony/mbms/InternalDownloadStatusListener$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/InternalDownloadStatusListener;->onStatusUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/mbms/InternalDownloadStatusListener;

.field final synthetic val$fileInfo:Landroid/telephony/mbms/FileInfo;

.field final synthetic val$request:Landroid/telephony/mbms/DownloadRequest;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Landroid/telephony/mbms/InternalDownloadStatusListener;Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;I)V
    .registers 5

    iput-object p1, p0, Landroid/telephony/mbms/InternalDownloadStatusListener$1;->this$0:Landroid/telephony/mbms/InternalDownloadStatusListener;

    iput-object p2, p0, Landroid/telephony/mbms/InternalDownloadStatusListener$1;->val$request:Landroid/telephony/mbms/DownloadRequest;

    iput-object p3, p0, Landroid/telephony/mbms/InternalDownloadStatusListener$1;->val$fileInfo:Landroid/telephony/mbms/FileInfo;

    iput p4, p0, Landroid/telephony/mbms/InternalDownloadStatusListener$1;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Landroid/telephony/mbms/InternalDownloadStatusListener$1;->this$0:Landroid/telephony/mbms/InternalDownloadStatusListener;

    invoke-static {v0}, Landroid/telephony/mbms/InternalDownloadStatusListener;->-$$Nest$fgetmAppListener(Landroid/telephony/mbms/InternalDownloadStatusListener;)Landroid/telephony/mbms/DownloadStatusListener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/mbms/InternalDownloadStatusListener$1;->val$request:Landroid/telephony/mbms/DownloadRequest;

    iget-object v2, p0, Landroid/telephony/mbms/InternalDownloadStatusListener$1;->val$fileInfo:Landroid/telephony/mbms/FileInfo;

    iget v3, p0, Landroid/telephony/mbms/InternalDownloadStatusListener$1;->val$status:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/telephony/mbms/DownloadStatusListener;->onStatusUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;I)V

    return-void
.end method
