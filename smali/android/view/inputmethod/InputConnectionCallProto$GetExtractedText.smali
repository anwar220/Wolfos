# classes2.dex

.class public final Landroid/view/inputmethod/InputConnectionCallProto$GetExtractedText;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputConnectionCallProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "GetExtractedText"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/InputConnectionCallProto$GetExtractedText$ExtractedTextRequest;
    }
.end annotation


# static fields
.field public static final FLAGS:J = 0x10500000002L

.field public static final REQUEST:J = 0x10b00000001L

.field public static final RESULT:J = 0x10900000003L


# instance fields
.field final synthetic this$0:Landroid/view/inputmethod/InputConnectionCallProto;


# direct methods
.method public constructor <init>(Landroid/view/inputmethod/InputConnectionCallProto;)V
    .registers 2

    iput-object p1, p0, Landroid/view/inputmethod/InputConnectionCallProto$GetExtractedText;->this$0:Landroid/view/inputmethod/InputConnectionCallProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
