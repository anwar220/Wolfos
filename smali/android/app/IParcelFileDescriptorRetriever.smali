# classes.dex

.class public interface abstract Landroid/app/IParcelFileDescriptorRetriever;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IParcelFileDescriptorRetriever$Stub;,
        Landroid/app/IParcelFileDescriptorRetriever$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.app.IParcelFileDescriptorRetriever"


# virtual methods
.method public abstract getPfd()Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
