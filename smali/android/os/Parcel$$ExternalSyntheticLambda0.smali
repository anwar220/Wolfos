# classes3.dex

.class public final synthetic Landroid/os/Parcel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic f$0:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/Parcel$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Landroid/os/Parcel$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Class;

    invoke-static {v0, p1}, Landroid/os/Parcel;->lambda$createFixedArray$0(Ljava/lang/Class;I)[Landroid/os/IInterface;

    move-result-object p1

    return-object p1
.end method
